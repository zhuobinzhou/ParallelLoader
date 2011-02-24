﻿/*
 * Copyright 2007-2009 (c) Donovan Adams, http://blog.hydrotik.com/
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

package com.hydrotik.parallelloader {
	import flash.events.HTTPStatusEvent;
	import flash.events.IEventDispatcher;

	/**
	 * @author Donovan | 0.1.0
	 */
	public interface IParallelLoader extends IEventDispatcher {

		function ioErrorHandler(currItem:ILoadable) : void;

		function openHandler(currItem:ILoadable) : void ;

		function progressHandler() : void;

		function completeHandler(currItem:ILoadable) : void;

		function httpStatusHandler(event : HTTPStatusEvent) : void;

		function addItem(src : String, container : * = null, info : Object = null) : void;

		function addItemAt(index : Number, src : String, container : *, info : Object) : void;
//
//		function loadXML(xml : XML, scope : * = null) : void ;
//
//		function removeItemAt(index : Number) : Vector.<ILoadable>;
//
//		function sort(func:Function) : void;
//
//		function shuffle(index : int, len : int, insertAt : int) : void;
//
//		function getItemAt(index : Number) : Object;
//
//		function getItemByTitle(title : String) : Object;
//
//		function getLoadedItems() : Vector.<ILoadable>;
//
//		function getQueuedItems() : Vector.<ILoadable>;

		function execute() : void;
//
//		function stop() : void;
//
//		function resume() : void;
//
//		function get loading() : Boolean;
//
//		function dispose() : void;
//
//		function isLoading() : Boolean;



		function updateTotal(bytes:int):void;
	}
}