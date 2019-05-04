@foreach($items as $menu_item)
    <?php
    $dropdown = '';
    $button = '';
    if(count($menu_item->children) > 0){
        $dropdown = 'navbarDropdown'.$menu_item->id;
        $button = 'role="button"'.' data-toggle="dropdown"'.' aria-haspopup="true"'.'s aria-expanded="false"';
    }
    ?>
    <li class="nav-item {{ count($menu_item->children) > 0 ? 'dropdown' : '' }}">
        <a id="{{$dropdown}}" class="nav-link {{ count($menu_item->children) > 0 ? 'dropdown-toggle' : '' }}" href="{{ $menu_item->link() }}"  <?php echo $button; ?> >{!! $menu_item->getTranslatedAttribute('title', session()->get('locale'), 'fallbackLocale') !!} </a>
        @if(count($menu_item->children) > 0)
            <div class="dropdown-menu" aria-labelledby="{{$dropdown}}">
                @foreach($menu_item->children as $child)
                <a class="dropdown-item" href="{{ $child->link() }}">{!! $child->getTranslatedAttribute('title', session()->get('locale'), 'fallbackLocale') !!}
                </a>
                @endforeach
                </div>
        @endif
    </li>
@endforeach
