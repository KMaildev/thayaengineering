<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDownloadHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('download_histories', function (Blueprint $table) {
            $table->increments('id');
            $table->text('name')->nullable();
            $table->text('phone')->nullable();
            $table->text('address')->nullable();
            $table->text('download_user_id')->nullable();
            $table->text('download_files')->nullable();
            $table->text('download_date')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('download_histories');
    }
}
