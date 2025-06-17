use anyhow::Result;

fn main() -> Result<()> {

    let add_instance = instance.get_export(&mut store, "add")?.into_func().unwrap();
    let result = add_instance.call(&mut store, (a, b))?;
    println!("Result: {}", result);

    Ok(())
}
