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
