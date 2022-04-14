using namespace System.Collections.Generic
$here = "$(Split-Path -Parent (Split-Path -Parent $PSCommandPath))"
$sut = (Split-Path -Leaf $PSCommandPath) -replace ".Tests.", "."
$sut = $sut -replace ".ps1", ".psm1"
. $here/src/$sut
Describe "main" {
    BeforeAll {
        
    }
    It "one is one" {
        1 | Should -Be 1
    }
    It "two is two" {
        2 | Should -Be 2
    }
    It "three is three" {
        3 | Should -Be 3
    }
}
