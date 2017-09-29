--------------------------------------------------------------------------------
-- Functional Programming (CS256)                                             --
-- Lecture 3: Basic types                                                     --
--------------------------------------------------------------------------------

module Lecture3 where

import Prelude hiding (const, fst, snd)

--------------------------------------------------------------------------------
-- Examples of typings

t0 :: Int
t0 = 42

t1 :: Bool
t1 = True

t2 :: Bool
t2 = False

t3 :: Char
t3 = 'c'

t4 :: String
t4 = "Cake"

t5 :: Double
t5 = 0.5

t6 :: Int
t6 = 4 + 8

t7 :: Int
t7 = 2 * 9 + 3

t8 :: Bool
t8 = True && False

t9 :: String
t9 = "AB" ++ "CD"

t10 :: Bool
t10 = even 9

--------------------------------------------------------------------------------
-- Function types

ourNot :: Bool -> Bool
ourNot = \b -> case b of
    True  -> False
    False -> True

ourNot' :: Bool -> Bool
ourNot' b = case b of
    True  -> False
    False -> True

ourNot'' :: Bool -> Bool
ourNot'' True  = False
ourNot'' False = True

t11 :: Bool
t11 = not True


xor :: Bool -> Bool -> Bool
xor = \a -> \b -> case a of
    False -> case b of
        True  -> True
        False -> False
    True  -> case b of
        True  -> False
        False -> True

xor' :: Bool -> Bool -> Bool
xor' a b = case a of
    False -> case b of
        True  -> True
        False -> False
    True  -> case b of
        True  -> False
        False -> True

xor'' :: Bool -> Bool -> Bool
xor'' False True  = True
xor'' False False = False
xor'' True  True  = False
xor'' True  False = True

t12 :: Bool -> Bool
t12 = xor True

--------------------------------------------------------------------------------
-- Module from Lecture 1 with type annotations

daysPerWeek :: Int
daysPerWeek = 7

hoursPerWeek :: Int
hoursPerWeek = daysPerWeek * 24

myFalse, myTrue :: Bool
myFalse = not True
myTrue = not (not True)

--------------------------------------------------------------------------------
-- Polymorphic types

f :: a -> a
f x = x

t13 :: Bool
t13 = f True

const :: a -> b -> a
const x y = x

--------------------------------------------------------------------------------
-- Parameterised types

t14 :: [Int]
t14 = [1,2,3]

t15 :: [Bool]
t15 = [True, True, False]

t16 :: [a]
t16 = []

t17 :: [[Int]]
t17 = [[1], [3,4]]

--------------------------------------------------------------------------------
-- Tuples

t18 :: (Int, Int)
t18 = (4, 7)

t19 :: (Int, Double)
t19 = (4, 7.0)

t20 :: (Char, Int, String)
t20 = ('a', 9, "Hello")

t21 :: ([Int], [Char])
t21 = ([1,2], ['a'])

t22 :: ([a], [b])
t22 = ([], [])

fst :: (a,b) -> a
fst (x,y) = x

snd :: (a,b) -> b
snd (x,y) = y

--------------------------------------------------------------------------------
