use warp::Filter;

use mysql::*;
use mysql::prelude::*;

use std::fmt;

#[derive(Debug)]
struct DBAuthor {
	id: u32,
	first_name: Option<String>,
	last_name: Option<String>,
	middle_name: Option<String>,
}

fn opt_to_str(s: &Option<String>) -> String {
	match s {
		Some(val) => val.to_string(),
		None => String::from("NULL"),
	}
}

impl ToString for DBAuthor {
	fn to_string(&self) -> String {
		fmt::format(format_args!("{} {} {} {}", self.id.to_string(), opt_to_str(&self.first_name), 
																	 opt_to_str(&self.last_name), 
																	 opt_to_str(&self.middle_name)))
	}
}

fn foo() -> String {
	let url = "mysql://root:Password123!@localhost:3306/store";

	let pool = Pool::new(url).unwrap();

	let mut conn = pool.get_conn().unwrap();

	let answ = conn
    .query_map(
        "SELECT ID, FirstName, LastName, MiddleName from author",
        |(id, first_name, last_name, middle_name)| {
            DBAuthor { id, first_name, last_name, middle_name }
        },
    ).unwrap();

    let mut result:String = String::new();

    for entry in answ {
    	result = result + "\n" + &entry.to_string();
    }

    result
}

#[tokio::main]
async fn main() {
//	GET /hello/warp => 200 OK with body "Hello, warp!"
	let hello = warp::path!("hello" / String).map(|name| format!("Hello, {}!", foo()));

	warp::serve(hello).run(([127, 0, 0, 1], 3030)).await;
}