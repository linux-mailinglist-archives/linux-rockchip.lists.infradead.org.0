Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36E51432CC
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 21:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mlPilhURwlx9larAj8NUGKm8u81KmV8jq8foa7zu7M=; b=b78KUweBtrTybo
	lXY2fp3q3tiz/LXFfZt/0NRD78HBnfxclJh6z+brYn1ksEFaKLnWifPzs8a5HnAsbaCIKJJoNhNEj
	xvQeq4vQlZri5ZRCjQuW7+y/25Uci827heYijPs9gr+aQYzVFnurvb3pOF3/LO3Uui/XjgNmIPYXi
	6M9gThH84mu47D9kh+Tqnigmik2iTdTGT8XZRwOpbyD+HUmsDHrg6tXyES/PZ7dWEf9Zl13Las1Os
	f8iNBqNDuTvQLUt6+K1vNwssMdAEhJH6E4fhuudHwO38Z8iqDb0fh+AlHzo5JkRZy+7OG471XFNgD
	eeSJkMuE6NUTVBMK62hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdRn-0003jz-09; Mon, 20 Jan 2020 20:14:55 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdRj-0003jT-3s
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 20:14:53 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1itdRe-00042k-JS; Mon, 20 Jan 2020 21:14:46 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89C03.dip0.t-ipconnect.de
 [217.232.156.3]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 00KKEiNZ005951
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 20 Jan 2020 21:14:44 +0100
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
 <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
 <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
Date: Mon, 20 Jan 2020 21:14:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1579551291;
 e4ff5f9f; 
X-HE-SMSGID: 1itdRe-00042k-JS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_121451_297389_DE2BAB59 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKCkFtIDIwLjAxLjIwIHVtIDE3OjA0IHNjaHJpZWIgR3VlbnRlciBSb2VjazoK
PiBPbiAxLzIwLzIwIDY6MzQgQU0sIE1hcmt1cyBSZWljaGwgd3JvdGU6Cj4+IEhpIEd1ZW50ZXIs
Cj4+Cj4+IEFtIDIwLjAxLjIwIHVtIDE1OjIxIHNjaHJpZWIgR3VlbnRlciBSb2VjazoKPj4+IE9u
IDEvMjAvMjAgMzo1OCBBTSwgSGVpa2tpIEtyb2dlcnVzIHdyb3RlOgo+Pj4+IEhpIE1hcmt1cywK
Pj4+Pgo+Pj4+IE9uIFRodSwgSmFuIDA5LCAyMDIwIGF0IDA1OjI5OjA3UE0gKzAxMDAsIE1hcmt1
cyBSZWljaGwgd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBJJ20gd29ya2luZyB3aXRoIGEg
Uk9DLVJLMzM5OS1QQyBhcm02NCBib2FyZCBmcm9tIGZpcmVmbHksIGNpcmN1aXQgc2hlZXQgWzFd
Lgo+Pj4+PiBUaGUgYm9hcmQgaXMgcG93ZXJlZCBmcm9tIGFuIFVTQi1DIHR5cGUgY29ubmVjdG9y
IHZpYSBhbiBGVVNCMzAyIFBEIGNvbnRyb2xsZXIuCj4+Pj4+IFdpdGggbWVhc3VyZWQgMTVXKyBw
b3dlciBjb25zdW1wdGlvbiBpdCBzaG91bGQgdXNlIGhpZ2hlciB2b2x0YWdlIFBEIG1vZGVzIHRo
YW4KPj4+Pj4gdGhlIHN0YW5kYXJkIDVWIFVTQi1DIG1vZGUuCj4+Pj4+Cj4+Pj4+IFdoZW4gSSBh
ZGQgdGhlIHJlbGF0ZWQgY29ubmVjdG9yIG5vZGUgaW4gRFRTIFsyXSB0aGUgRlVTQjMwMiBpbml0
aWFsaXplcwo+Pj4+PiB0aGUgcmlnaHQgUEQgbW9kZSAoZS5nLiAxNVYvM0EpLgo+Pj4+Pgo+Pj4+
PiBCdXQgZHVyaW5nIGluaXRpYWxpc2F0aW9uIHRoZSBQRCBpcyBzd2l0Y2hlZCBvZmYgc2hvcnRs
eSBhbmQgdGhlIGJvYXJkIGhhcyBhIGJsYWNrb3V0Lgo+Pj4+PiBXaGVuIEkgaW5qZWN0IGEgYmFj
a3VwIHN1cHBseSB2b2x0YWdlIGJlaGluZCB0aGUgRlVTQjMwMiAoZS5nLiBhdCBTWVNfMTJWIGxp
bmUpIGR1cmluZyBib290Cj4+Pj4+IEkgY2FuIHJlbW92ZSB0aGUgYmFja3VwIGFmdGVyIHN1Y2Nl
c2Z1bGwgc2V0dGluZyB1cCB0aGUgUEQgYW5kIHRoZSBib2FyZCB3aWxsIHJ1biBmaW5lLgo+Pj4+
Pgo+Pj4+PiBJcyBpdCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhlIGJlaGF2aW91ciBvZiB0aGUgZnVz
YjMwMiBkcml2ZXIgdG8gbm90IHBvd2VyIGRvd24gdGhlIFBEIHN1cHBseQo+Pj4+PiBkdXJpbmcg
aW5pdD8KPj4+Pgo+Pj4+IEkgZ3Vlc3MgaXQncyBhbHNvIHBvc3NpYmxlIHRoYXQgdGhlIHByb2Js
ZW0gaXMgd2l0aCB0Y3BtLmMgaW5zdGVhZCBvZgo+Pj4+IGZ1c2IzMDIuYy4gdGNwbS5jIHByb3Zp
ZGVzIHRoZSBVU0IgUEQgc3RhdGUgbWF0Y2hpbmVzLiBHdWVudGVyISBDYW4KPj4+PiB5b3UgdGFr
ZSBhIGxvb2sgYXQgdGhpcz8KPj4+Pgo+Pj4KPj4+IFRoZXJlIHdhcyBhbHdheXMgYSBwcm9ibGVt
IHdpdGggaGFuZG9mZiBmcm9tIHRoZSBib290bG9hZGVyLiB0Y3BtX2luaXQoKSBjYWxscwo+Pj4g
dGNwbV9yZXNldF9wb3J0KCkgd2hpY2ggdHVybnMgdmJ1cyBhbmQgdmNvbm4gb2ZmLCB3aGljaCBJ
IGltYWdpbmUgY2FuCj4+PiB0cmlnZ2VyIHRoZSBzaXR1YXRpb24uCj4+Pgo+Pj4gVW5mb3J0dW5h
dGVseSBJIHdhcyBuZXZlciBhYmxlIHRvIHNvbHZlIHRoZSBwdXp6bGUuIFRoZSBUeXBlLUMgcHJv
dG9jb2wgZG9lcwo+Pj4gbm90IHN1cHBvcnQgYW55IGtpbmQgb2YgImhhbmQtb2ZmIiBmcm9tIG9u
ZSBjb21wb25lbnQgaW4gdGhlIHN5c3RlbSB0byBhbm90aGVyLgo+Pj4gSWYgdGhlIHN0YXRlIG1h
Y2hpbmUgZG9lc24ndCBzdGFydCBmcm9tIGEgY2xlYW4gc3RhdGUsIHRoZXJlIGlzIHByZXR0eQo+
Pj4gbXVjaCBubyBndWFyYW50ZWUgdGhhdCBpdCBldmVyIHN5bmNocm9uaXplcy4KPj4+Cj4+PiBN
YXliZSBzb21lb25lIGNhbiBmaW5kIGEgYmV0dGVyIHNvbHV0aW9uLCBidXQgd2hlbiBJIHdyb3Rl
IHRoZSBjb2RlIEkganVzdAo+Pj4gY291bGQgbm90IGdldCBpdCB0byB3b3JrIHJlbGlhYmx5IHdp
dGhvdXQgcmVzZXR0aW5nIGV2ZXJ5dGhpbmcgZHVyaW5nCj4+PiByZWdpc3RyYXRpb24uCj4+Pgo+
Pj4gTm90ZSB0aGF0IHY0LjQgZGlkIG5vdCBpbmNsdWRlIHRoZSB1cHN0cmVhbSB0Y3BtIGNvZGUs
IHN1Z2dlc3RpbmcgdGhlCj4+PiBjb2RlIGluIHRoZSB2ZW5kb3Iga2VybmVsIHdhcyBwb3NzaWJs
eSB1c2luZyBhIGRpZmZlcmVudCBvciBiYWNrcG9ydGVkCj4+PiBzdGF0ZSBtYWNoaW5lLiBJbXBv
c3NpYmxlIHRvIHNheSB3aGF0IHdhcyBkb25lIHRoZXJlIHdpdGhvdXQgYWNjZXNzCj4+PiB0byB0
aGUgY29kZS4KPj4KPj4gVGhlIHZlbmRvciBjb2RlIGZvciBmdXNiMzAyIGlzIGhlcmU6Cj4+IGh0
dHBzOi8vZ2l0aHViLmNvbS9GaXJlZmx5VGVhbS9rZXJuZWwvdHJlZS9yazMzOTkvZmlyZWZseS9k
cml2ZXJzL21mZAo+Pgo+IAo+IEFGQUlDUyB0aGUgdmVuZG9yIGNvZGUgZG9uJ3QgcmVzZXQgVkJV
UywgYW5kIHNlbGVjdGl2ZWx5IChvbmx5KSByZXNldHMgdGhlCj4gUEQgc3RhdGUgbWFjaGluZSBp
biB0aGUgZnVzYjMwMiBvbiBzdGFydHVwLiBUaGUgdGNwbSBzdGF0ZSBtYWNoaW5lIGlzIGVtYmVk
ZGVkCj4gaW4gdGhlIGZ1c2IzMDIgZHJpdmVyLCBtYWtpbmcgdGhpcyBlYXNpZXIgdG8gY29udHJv
bC4KPiAKPiBUaGUgZnVzYjMwMiBMaW51eCBrZXJuZWwgZHJpdmVyLCBvbiB0aGUgb3RoZXIgc2lk
ZSwgcmVzZXRzIHRoZSBlbnRpcmUgZnVzYjMwMgo+IG9uIGluaXRpYWxpemF0aW9uLCBub3QganVz
dCBQRCAoYml0IDAgb2YgdGhlIHJlc2V0IHJlZ2lzdGVyKS4gUXVlc3Rpb24gaXMgaWYKPiB0aGF0
IGNhbiBiZSBjaGFuZ2VkIHRvIGp1c3QgcmVzZXQgUEQgKGJpdCAxIG9mIHRoZSByZXNldCByZWdp
c3RlcikuCj4gTWF5YmUgdGhhdCB3b3VsZCBhbHJlYWR5IGZpeCB0aGUgcHJvYmxlbS4gQ2FuIHlv
dSBnaXZlIGl0IGEgdHJ5ID8KPiAKPiBHdWVudGVyCgpJIHRyaWVkIAoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdXNiL3R5cGVjL3RjcG0vZnVzYjMwMi5jIGIvZHJpdmVycy91c2IvdHlwZWMvdGNwbS9m
dXNiMzAyLmMKaW5kZXggZWQ4NjU1YzZhZjhjLi42ZTE1ZTdiMjIwNjQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvdXNiL3R5cGVjL3RjcG0vZnVzYjMwMi5jCisrKyBiL2RyaXZlcnMvdXNiL3R5cGVjL3Rj
cG0vZnVzYjMwMi5jCkBAIC0zMzQsMTEgKzMzNCwxMSBAQCBzdGF0aWMgaW50IGZ1c2IzMDJfc3df
cmVzZXQoc3RydWN0IGZ1c2IzMDJfY2hpcCAqY2hpcCkKICAgICAgICBpbnQgcmV0ID0gMDsKIAog
ICAgICAgIHJldCA9IGZ1c2IzMDJfaTJjX3dyaXRlKGNoaXAsIEZVU0JfUkVHX1JFU0VULAotICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZVU0JfUkVHX1JFU0VUX1NXX1JFU0VUKTsKKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBGVVNCX1JFR19SRVNFVF9QRF9SRVNFVCk7CiAg
ICAgICAgaWYgKHJldCA8IDApCi0gICAgICAgICAgICAgICBmdXNiMzAyX2xvZyhjaGlwLCAiY2Fu
bm90IHN3IHJlc2V0IHRoZSBjaGlwLCByZXQ9JWQiLCByZXQpOworICAgICAgICAgICAgICAgZnVz
YjMwMl9sb2coY2hpcCwgImNhbm5vdCBwZCByZXNldCB0aGUgY2hpcCwgcmV0PSVkIiwgcmV0KTsK
ICAgICAgICBlbHNlCi0gICAgICAgICAgICAgICBmdXNiMzAyX2xvZyhjaGlwLCAic3cgcmVzZXQi
KTsKKyAgICAgICAgICAgICAgIGZ1c2IzMDJfbG9nKGNoaXAsICJwZCByZXNldCIpOwogCiAgICAg
ICAgcmV0dXJuIHJldDsKIH0KCmJ1dCBkaWQgbm90IGhlbHAsIGFmdGVyIG1tYyBhbmQgZWhjaSBp
bml0aWFsaXppbmcgdGhlIFBELXN1cHBseSBnZXRzIHN3aXRjaGVkIG9mZiBhdCAxLjk1cy4gCkdy
dcOfLApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
