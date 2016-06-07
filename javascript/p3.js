// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143?

var isPrime = function (n) {
    if (isNaN(n) || n == 1) {
        return false;
    }
    if (n % 2 === 0) {
        return (n == 2);
    }
    if (n % 3 === 0) {
        return (n == 3);
    }
    m = Math.sqrt(n);
    for (i = 5; i < m; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
};

var largestPrime = function (n) {
    for (var i = n - 1; i > 1; i--) {
        if (n % i === 0 && isPrime(i)) {
            return i;
        }
    }
    return n;
};

largestPrime(69);
