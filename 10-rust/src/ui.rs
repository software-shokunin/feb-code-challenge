use adder;

pub fn run(args: Vec<String>) -> String {
    if args.len() != 2 {
        return "Please provide two integers.".to_string();
    }

    let first_parse_result = args[0].parse::<i32>();
    let second_parse_result = args[1].parse::<i32>();

    if first_parse_result.is_err() || second_parse_result.is_err() {
        return "Please provide two integers.".to_string();
    }

    let first = first_parse_result.unwrap();
    let second = second_parse_result.unwrap();

    return adder::add(first, second).to_string();
}

#[cfg(test)]
mod test {
    use super::run;

    fn run_with_args(args: &[&str]) -> String {
        run(args.into_iter().map(|s| s.to_string()).collect())
    }

    #[test]
    fn valid_input_returns_result() {
        assert_eq!("42", run_with_args(&["40", "2"]));
    }

    #[test]
    fn no_arguments_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&[]));
    }

    #[test]
    fn three_arguments_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&["1", "2", "3"]));
    }

    #[test]
    fn non_numeric_first_argument_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&["AAA", "2"]));
    }

    #[test]
    fn non_integer_first_argument_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&["2.5", "2"]));
    }

    #[test]
    fn non_numeric_second_argument_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&["2", "AAA"]));
    }

    #[test]
    fn non_integer_second_argument_returns_error() {
        assert_eq!("Please provide two integers.", run_with_args(&["2", "2.5"]));
    }

    #[test]
    fn negative_numbers_returns_result() {
        assert_eq!("-38", run_with_args(&["-40", "2"]));
    }
}
