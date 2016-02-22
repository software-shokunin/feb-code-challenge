pub fn add(a: i32, b: i32) -> i32 {
    if b == 0 {
        return a;
    }

    return add(a ^ b, (a & b) << 1);
}

#[cfg(test)]
mod test {
    use super::add;

    #[test]
    fn zero_plus_zero() {
        assert_eq!(0, add(0, 0));
    }

    #[test]
    fn zero_plus_one() {
        assert_eq!(1, add(0, 1));
    }

    #[test]
    fn one_plus_zero() {
        assert_eq!(1, add(1, 0));
    }

    #[test]
    fn both_positive_no_carries() {
        assert_eq!(3, add(1, 2));
    }

    #[test]
    fn both_positive_carries() {
        assert_eq!(4, add(1, 3));
    }

    #[test]
    fn zero_minus_one() {
        assert_eq!(-1, add(0, -1));
    }

    #[test]
    fn one_minus_one() {
        assert_eq!(0, add(1, -1));
    }

    #[test]
    fn two_negatives() {
        assert_eq!(-25, add(-10, -15));
    }

    #[test]
    fn mixed_sign_positive_result() {
        assert_eq!(5, add(-10, 15));
    }

    #[test]
    fn mixed_sign_negative_result() {
        assert_eq!(-10, add(20, -30));
    }
}
