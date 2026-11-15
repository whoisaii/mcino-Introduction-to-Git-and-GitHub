# Simple Interest Calculator

A Bash calculator that calculates simple interest given the principal amount, annual rate of interest, and time period in years.

## Formula

```text
simple interest = principal * annual_rate * years / 100
```

The annual rate is entered as a percentage: enter `5` for 5%. Decimal values are supported.

## Run

Requires Bash and awk (available on standard macOS and Linux installations).

```bash
bash simple-interest.sh
```

Input fields:
- `p`: principal amount (non-negative)
- `r`: annual interest rate in percent (non-negative)
- `t`: time period in years (non-negative)

Example: principal `1000`, rate `5`, time `2` produces simple interest `100.00`.
This educational calculator does not compound interest and is not financial advice.

## Contributing

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) and [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).

## License

Apache License 2.0. See [LICENSE](LICENSE).

_© 2022 XYZ, Inc._
