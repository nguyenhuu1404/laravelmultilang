<?php

namespace App;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Post extends Model
{
    use Translatable,
        Resizable;

    protected $translatable = ['title', 'seo_title', 'excerpt', 'body', 'slug', 'meta_description', 'meta_keywords'];

    const PUBLISHED = 1;
    const NORMAL_TYPE = 1;
    const SALE_TYPE = 2;
    const SOCIAL_TYPE = 3;

    protected $guarded = [];

    public function save(array $options = [])
    {
        // If no author has been assigned, assign the current user's id as the author of the post
        if (!$this->author_id && Auth::user()) {
            $this->author_id = Auth::user()->getKey();
        }

        parent::save();
    }

    public function authorId()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'author_id', 'id');
    }

    /**
     * Scope a query to only published scopes.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query
     *
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopePublished(Builder $query)
    {
        return $query->where('status', '=', static::PUBLISHED);
    }

    public function scopeSaleType(Builder $query)
    {
        return $query->where('type', '=', static::SALE_TYPE);
    }

    public function scopeSocialType(Builder $query)
    {
        return $query->where('type', '=', static::SOCIAL_TYPE);
    }

    public function scopeNormalType(Builder $query)
    {
        return $query->where('type', '=', static::NORMAL_TYPE);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function resort()
    {
        return $this->belongsTo('App\Resort');
    }
}
