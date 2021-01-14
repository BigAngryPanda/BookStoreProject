use warp::Filter;

use mysql::*;
use mysql::prelude::*;

fn foo() {
	let url = "mysql://root:Password123!@localhost:3306/store";

	let pool = Pool::new(url).unwrap();

	let mut conn = pool.get_conn().unwrap();
}

#[tokio::main]
async fn main() {
//	foo();

//   GET /hello/warp => 200 OK with body "Hello, warp!"
//   let hello = warp::path!("hello" / String).map(|name| format!("Hello, {}!", name));

//    warp::serve(hello).run(([127, 0, 0, 1], 3030)).await;
}