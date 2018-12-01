defmodule Mix.Tasks.D01.P1 do
  use Mix.Task

  import AdventOfCode2018.Day01

  @shortdoc "Day 01 Part 1"
  def run(_) do
    input = ~w{
            14
            -15
            7
            -10
            14
            -6
            -13
            -8
            -1
            -19
            -16
            -5
            1
            11
            7
            16
            -3
            1
            -10
            8
            17
            -10
            -12
            1
            -16
            5
            12
            -20
            9
            -19
            -10
            -2
            10
            6
            -10
            -17
            -2
            -4
            14
            -4
            11
            4
            19
            5
            4
            15
            -3
            8
            -17
            4
            10
            -9
            -16
            -7
            -16
            -7
            11
            15
            14
            21
            14
            11
            17
            19
            -12
            -14
            10
            -1
            6
            -12
            16
            -18
            3
            -8
            -5
            -5
            13
            -2
            8
            -16
            5
            -14
            -9
            4
            -11
            6
            11
            -9
            -16
            20
            19
            -8
            -21
            17
            19
            19
            13
            -7
            9
            17
            -11
            -2
            -12
            -15
            -5
            16
            -13
            -13
            19
            -5
            6
            23
            10
            8
            8
            -18
            -4
            19
            -16
            -10
            16
            -2
            18
            7
            5
            13
            3
            5
            12
            18
            4
            9
            -19
            -18
            -15
            -18
            14
            -5
            -4
            10
            17
            13
            11
            9
            -10
            -7
            11
            -10
            -12
            13
            -10
            18
            16
            11
            12
            1
            -14
            15
            -18
            -10
            19
            -1
            20
            -9
            5
            1
            -2
            -18
            -9
            -10
            16
            -4
            -11
            -15
            -10
            -5
            -10
            6
            -18
            -8
            12
            -9
            12
            3
            21
            -3
            -9
            7
            -13
            1
            -18
            -8
            -1
            4
            -14
            -11
            13
            -21
            -20
            5
            -3
            -9
            -3
            9
            17
            11
            -2
            8
            11
            -2
            -7
            21
            -13
            16
            18
            10
            19
            6
            9
            -3
            -18
            15
            18
            20
            -15
            3
            17
            10
            15
            11
            -16
            2
            5
            -3
            -5
            12
            -10
            12
            -20
            -9
            7
            -20
            16
            -1
            10
            2
            16
            19
            19
            4
            3
            -8
            3
            -17
            -12
            10
            15
            11
            -19
            -3
            14
            10
            13
            8
            -13
            7
            1
            -4
            -7
            -11
            -19
            6
            11
            11
            -19
            -11
            -7
            16
            4
            -3
            -3
            -2
            -10
            -8
            -8
            6
            6
            1
            -9
            -10
            11
            -8
            18
            -13
            -14
            21
            -2
            4
            8
            14
            22
            7
            3
            6
            16
            2
            13
            8
            -1
            -6
            -19
            10
            7
            5
            -20
            18
            -16
            8
            -4
            5
            -15
            9
            -13
            -20
            -15
            16
            -12
            2
            19
            11
            -6
            -7
            19
            5
            18
            12
            14
            -16
            3
            18
            -10
            12
            -1
            16
            15
            19
            8
            14
            -18
            16
            6
            -14
            -7
            -14
            -5
            -14
            15
            -14
            12
            -8
            -19
            -5
            7
            5
            -1
            20
            -13
            5
            21
            19
            -17
            -10
            -20
            10
            3
            -12
            -2
            -6
            -8
            -16
            7
            12
            -5
            15
            -19
            11
            -17
            -6
            -4
            -11
            16
            18
            6
            -15
            1
            -13
            -5
            6
            -2
            8
            -17
            -14
            12
            -14
            17
            1
            -11
            8
            -20
            -10
            -7
            19
            -18
            -10
            13
            -10
            -18
            5
            -12
            30
            -1
            -2
            -22
            31
            26
            39
            18
            -11
            15
            10
            6
            -1
            8
            9
            -7
            -8
            -20
            5
            -37
            40
            46
            -2
            11
            5
            -11
            44
            -10
            4
            39
            -13
            40
            11
            18
            16
            -12
            9
            -14
            -14
            -16
            -6
            -3
            34
            12
            -29
            21
            -17
            -6
            64
            -1
            28
            24
            -14
            1
            19
            -18
            9
            18
            2
            1
            -14
            22
            19
            -7
            -18
            12
            12
            -5
            -5
            -9
            -23
            10
            23
            15
            14
            -11
            21
            14
            -22
            -18
            -7
            -4
            25
            34
            -151
            25
            -29
            19
            -96
            -31
            218
            150
            -31
            18
            -63
            126
            71018
            2
            -9
            3
            -5
            -16
            -6
            -17
            -4
            -13
            -1
            3
            -4
            -19
            -1
            6
            2
            10
            11
            16
            5
            22
            10
            16
            4
            4
            4
            -14
            7
            -6
            -12
            1
            9
            17
            -7
            -6
            16
            -7
            11
            -15
            12
            10
            5
            19
            -8
            -14
            9
            16
            -13
            -11
            14
            -16
            -16
            -2
            9
            -11
            14
            2
            9
            15
            8
            2
            -12
            3
            17
            -4
            -7
            6
            -16
            12
            7
            -14
            -16
            8
            -21
            4
            12
            -2
            -21
            -20
            1
            7
            37
            1
            7
            24
            13
            -15
            6
            10
            -11
            18
            1
            -12
            2
            12
            4
            3
            7
            -15
            12
            8
            12
            5
            11
            -5
            9
            16
            14
            19
            -14
            4
            12
            14
            12
            19
            13
            4
            -12
            -19
            5
            10
            15
            -9
            -14
            4
            -8
            -5
            -5
            15
            4
            -15
            -12
            6
            -7
            -4
            -2
            -19
            -7
            -11
            -3
            2
            2
            -14
            -1
            12
            10
            -2
            8
            -11
            24
            -7
            5
            10
            1
            15
            12
            -16
            -18
            2
            1
            -17
            4
            11
            3
            8
            -7
            -11
            -2
            -17
            13
            -12
            -15
            -16
            -16
            6
            11
            10
            -13
            -19
            -6
            16
            -15
            -5
            -9
            10
            -12
            -14
            18
            -19
            -8
            -19
            -6
            -17
            -18
            13
            41
            -4
            8
            -6
            20
            18
            -12
            -5
            -12
            -2
            -4
            -6
            -7
            5
            35
            20
            10
            -11
            4
            2
            -7
            16
            -10
            -20
            3
            -9
            -10
            22
            26
            16
            13
            -7
            -9
            -14
            10
            -5
            11
            -3
            -10
            -17
            8
            10
            8
            13
            -10
            7
            7
            -1
            28
            16
            10
            17
            -16
            11
            17
            4
            15
            2
            9
            8
            -10
            -2
            3
            15
            17
            -16
            11
            -4
            11
            -4
            11
            4
            -3
            9
            -2
            -18
            -17
            6
            -12
            11
            9
            -10
            -8
            12
            -15
            -1
            18
            16
            -19
            15
            7
            20
            -3
            18
            -11
            7
            -17
            -13
            -15
            9
            14
            12
            -18
            -20
            -22
            7
            -6
            -3
            15
            8
            22
            19
            17
            7
            3
            2
            -14
            -9
            -1
            4
            13
            -15
            3
            15
            7
            -1
            11
            9
            -14
            -16
            2
            23
            14
            1
            20
            14
            -4
            19
            -18
            14
            2
            17
            -12
            -1
            -19
            -13
            -17
            -6
            -10
            -14
            -7
            -10
            18
            10
            15
            -1
            -3
            14
            3
            -18
            -9
            3
            -12
            -6
            5
            5
            9
            15
            14
            -12
            -4
            9
            16
            -13
            -9
            -15
            17
            18
            1
            16
            -3
            19
            17
            18
            7
            6
            -14
            -2
            -6
            3
            2
            15
            -19
            -5
            -9
            -12
            -16
            20
            7
            -21
            13
            6
            -8
            9
            17
            -19
            -13
            19
            9
            15
            -16
            -7
            -10
            -20
            -15
            -14
            -19
            -13
            -23
            -1
            -8
            -8
            10
            5
            -22
            8
            -11
            -20
            17
            -1
            -2
            5
            -21
            11
            17
            3
            -7
            -7
            -19
            15
            -38
            1
            -18
            -17
            -23
            -21
            -71664
            }

    input
    |> part1()
    |> IO.inspect(label: "Part 1 Results")
  end
end
