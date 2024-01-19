// This uses gvernaud's hotscript: https://github.com/gvergnaud/HOTScript
// it can be installed using npm install -D hotscript
// otherwise it was beyond my Typescript knowledge to get working
import { Numbers, Call } from "hotscript";

type IsLeapyear<Year extends number | bigint> = Call<
  Numbers.Compare<Call<Numbers.Mod<Year, 4>>, 0>
> extends 0
  ? Call<Numbers.Mod<Year, 100>> extends 0
    ? Call<Numbers.Mod<Year, 400>> extends 0
      ? `${Year} is a leap year`
      : `${Year} is not a leap year`
    : `${Year} is a leap year`
  : `${Year} is not a leap year`;

// Same years tested by other examples:
type Test1900 = IsLeapyear<1900>;
type Test2000 = IsLeapyear<2000>;
type Test2023 = IsLeapyear<2023>;
type Test2024 = IsLeapyear<2024>;
