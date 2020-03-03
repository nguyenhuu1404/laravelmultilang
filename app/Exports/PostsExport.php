<?php

namespace App\Exports;

use Generator;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromGenerator;

class PostsExport implements FromGenerator
{
    use Exportable;

    public function generator(): Generator
    {
        for ($i = 1; $i <= 100; $i++) {
            yield [$i, $i+1, $i+2];
        }
    }
}