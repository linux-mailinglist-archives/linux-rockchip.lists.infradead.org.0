Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1F6F14A5
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 12:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGnqimzKBPWju5kCzGe8VBJ7+9e8HznDtZLkhQlPlXM=; b=uSrjnbbVno6Mgk
	+3Ox7O+88a8ozHrBeOtWs710zSbBbgScnO+m/k32I7JpoA3k6GwSYxX2lcLQ5oIZjWoDkADDYLgiB
	q+wPLJGNC9HLsJUzBXgQh4rkbyQbWrnXdJp8lbVv7jlbdP65SSmOLGTtt62PMngYqlZlsA33vsRkD
	4zALqkphoNggzZoVUTl5OE1s2pqIjokHRCU9fIpijGs13k9Ug8KwakxkO4U7vi+w+Su2ja80FHi7V
	sH2dpsznryns80Bkn1/v5fORKet8VYeh1UHjytg0Z/23ww150ENpIHi0gRe3sdL0b7U73WUpyEjU3
	uqskHWlqpRHqumJDJsjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJCC-0004RX-Dy; Wed, 06 Nov 2019 11:09:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJC8-0004Q3-Og
 for linux-rockchip@lists.infradead.org; Wed, 06 Nov 2019 11:09:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EEC87A7;
 Wed,  6 Nov 2019 03:09:46 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF0C23F6C4;
 Wed,  6 Nov 2019 03:09:45 -0800 (PST)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 9E540682956; Wed,  6 Nov 2019 11:09:44 +0000 (GMT)
Date: Wed, 6 Nov 2019 11:09:44 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCHv2 2/4] drm/malidp: use afbc helpers
Message-ID: <20191106110944.eod6k4vdsw5at6tx@e110455-lin.cambridge.arm.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-3-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104221228.3588-3-andrzej.p@collabora.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030948_893951_31E4F2CC 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, James Wang <james.qian.wang@arm.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5kcnplaiwKCk9uIE1vbiwgTm92IDA0LCAyMDE5IGF0IDExOjEyOjI2UE0gKzAxMDAsIEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBUaGVyZSBhcmUgYWZiYyBoZWxwZXJzIGF2YWls
YWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWou
cEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYu
YyB8IDY2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlk
cF9kcnYuYwo+IGluZGV4IDM3ZDkyYTA2MzE4ZS4uYWI5MzU4OGNjOGViIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FybS9tYWxpZHBfZHJ2LmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgv
cG1fcnVudGltZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPgo+ICAKPiArI2luY2x1
ZGUgPGRybS9kcm1fYWZiYy5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KPiAgI2lu
Y2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9jcnRj
Lmg+Cj4gQEAgLTM1LDggKzM2LDYgQEAKPiAgI2luY2x1ZGUgIm1hbGlkcF9ody5oIgo+ICAKPiAg
I2RlZmluZSBNQUxJRFBfQ09ORl9WQUxJRF9USU1FT1VUCTI1MAo+IC0jZGVmaW5lIEFGQkNfSEVB
REVSX1NJWkUJCTE2Cj4gLSNkZWZpbmUgQUZCQ19TVVBFUkJMS19BTElHTk1FTlQJCTEyOAo+ICAK
PiAgc3RhdGljIHZvaWQgbWFsaWRwX3dyaXRlX2dhbW1hX3RhYmxlKHN0cnVjdCBtYWxpZHBfaHdf
ZGV2aWNlICpod2RldiwKPiAgCQkJCSAgICAgdTMyIGRhdGFbTUFMSURQX0NPRUZGVEFCX05VTV9D
T0VGRlNdKQo+IEBAIC0yNzcsMjQgKzI3Niw4IEBAIG1hbGlkcF92ZXJpZnlfYWZiY19mcmFtZWJ1
ZmZlcl9jYXBzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAkJCQkJbW9kZV9jbWQtPm1vZGlm
aWVyWzBdKSA9PSBmYWxzZSkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+IC0JaWYgKG1vZGVfY21k
LT5vZmZzZXRzWzBdICE9IDApIHsKPiAtCQlEUk1fREVCVUdfS01TKCJBRkJDIGJ1ZmZlcnMnIHBs
YW5lIG9mZnNldCBzaG91bGQgYmUgMFxuIik7Cj4gLQkJcmV0dXJuIGZhbHNlOwo+IC0JfQo+IC0K
PiAtCXN3aXRjaCAobW9kZV9jbWQtPm1vZGlmaWVyWzBdICYgQUZCQ19TSVpFX01BU0spIHsKPiAt
CWNhc2UgQUZCQ19TSVpFXzE2WDE2Ogo+IC0JCWlmICgobW9kZV9jbWQtPndpZHRoICUgMTYpIHx8
IChtb2RlX2NtZC0+aGVpZ2h0ICUgMTYpKSB7Cj4gLQkJCURSTV9ERUJVR19LTVMoIkFGQkMgYnVm
ZmVycyBtdXN0IGJlIGFsaWduZWQgdG8gMTYgcGl4ZWxzXG4iKTsKPiAtCQkJcmV0dXJuIGZhbHNl
Owo+IC0JCX0KPiAtCQlicmVhazsKPiAtCWRlZmF1bHQ6Cj4gLQkJRFJNX0RFQlVHX0tNUygiVW5z
dXBwb3J0ZWQgQUZCQyBibG9jayBzaXplXG4iKTsKPiAtCQlyZXR1cm4gZmFsc2U7Cj4gLQl9Cj4g
LQo+IC0JcmV0dXJuIHRydWU7Cj4gKwlyZXR1cm4gZHJtX2FmYmNfY2hlY2tfb2Zmc2V0KGRldiwg
bW9kZV9jbWQpICYmCj4gKwkgICAgICAgZHJtX2FmYmNfY2hlY2tfc2l6ZV9hbGlnbihkZXYsIG1v
ZGVfY21kKTsKPiAgfQoKR2l2ZW4gdGhhdCB0aGUgY29udGVudCBvZiB0aGlzIGZ1bmN0aW9uIGdl
dHMgY29waWVkIHByZXR0eSBtdWNoIHZlcmJhdGltIGludG8gdGhlIG5ldwpkcm1fYWZiYy5jIGZp
bGUsIEkgc3VnZ2VzdCB5b3UgbWFrZSB0aGUgY2hhbmdlIGluIHRoZSAxLzQgcGF0Y2ggYW5kIGFs
c28gdXBkYXRlIHRoZQpjb3B5cmlnaHQgc3RhdGVtZW50IGluIHRoYXQgZmlsZSB0byBzaG93IHRo
YXQgdGhlIGNvZGUgb3JpZ2luYXRlZCBmcm9tIGhlcmUuCgpCZXN0IHJlZ2FyZHMsCkxpdml1Cgo+
ICAKPiAgc3RhdGljIGJvb2wKPiBAQCAtMzAyLDU0ICsyODUsMjkgQEAgbWFsaWRwX3ZlcmlmeV9h
ZmJjX2ZyYW1lYnVmZmVyX3NpemUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCQkJCSAgICBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gIAkJCQkgICAgY29uc3Qgc3RydWN0IGRybV9tb2RlX2Zi
X2NtZDIgKm1vZGVfY21kKQo+ICB7Cj4gLQlpbnQgbl9zdXBlcmJsb2NrcyA9IDA7Cj4gIAljb25z
dCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICppbmZvOwo+ICAJc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmpzID0gTlVMTDsKPiAtCXUzMiBhZmJjX3N1cGVyYmxvY2tfc2l6ZSA9IDAsIGFmYmNfc3Vw
ZXJibG9ja19oZWlnaHQgPSAwOwo+IC0JdTMyIGFmYmNfc3VwZXJibG9ja193aWR0aCA9IDAsIGFm
YmNfc2l6ZSA9IDA7Cj4gIAlpbnQgYnBwID0gMDsKPiAtCj4gLQlzd2l0Y2ggKG1vZGVfY21kLT5t
b2RpZmllclswXSAmIEFGQkNfU0laRV9NQVNLKSB7Cj4gLQljYXNlIEFGQkNfU0laRV8xNlgxNjoK
PiAtCQlhZmJjX3N1cGVyYmxvY2tfaGVpZ2h0ID0gMTY7Cj4gLQkJYWZiY19zdXBlcmJsb2NrX3dp
ZHRoID0gMTY7Cj4gLQkJYnJlYWs7Cj4gLQlkZWZhdWx0Ogo+IC0JCURSTV9ERUJVR19LTVMoIkFG
QkMgc3VwZXJibG9jayBzaXplIGlzIG5vdCBzdXBwb3J0ZWRcbiIpOwo+IC0JCXJldHVybiBmYWxz
ZTsKPiAtCX0KPiArCXUzMiB3LCBoOwo+ICAKPiAgCWluZm8gPSBkcm1fZ2V0X2Zvcm1hdF9pbmZv
KGRldiwgbW9kZV9jbWQpOwo+IC0KPiAtCW5fc3VwZXJibG9ja3MgPSAobW9kZV9jbWQtPndpZHRo
IC8gYWZiY19zdXBlcmJsb2NrX3dpZHRoKSAqCj4gLQkJKG1vZGVfY21kLT5oZWlnaHQgLyBhZmJj
X3N1cGVyYmxvY2tfaGVpZ2h0KTsKPiAtCj4gIAlicHAgPSBtYWxpZHBfZm9ybWF0X2dldF9icHAo
aW5mby0+Zm9ybWF0KTsKPiAgCj4gLQlhZmJjX3N1cGVyYmxvY2tfc2l6ZSA9IChicHAgKiBhZmJj
X3N1cGVyYmxvY2tfd2lkdGggKiBhZmJjX3N1cGVyYmxvY2tfaGVpZ2h0KQo+IC0JCQkJLyBCSVRT
X1BFUl9CWVRFOwo+IC0KPiAtCWFmYmNfc2l6ZSA9IEFMSUdOKG5fc3VwZXJibG9ja3MgKiBBRkJD
X0hFQURFUl9TSVpFLCBBRkJDX1NVUEVSQkxLX0FMSUdOTUVOVCk7Cj4gLQlhZmJjX3NpemUgKz0g
bl9zdXBlcmJsb2NrcyAqIEFMSUdOKGFmYmNfc3VwZXJibG9ja19zaXplLCBBRkJDX1NVUEVSQkxL
X0FMSUdOTUVOVCk7Cj4gLQo+IC0JaWYgKChtb2RlX2NtZC0+d2lkdGggKiBicHApICE9IChtb2Rl
X2NtZC0+cGl0Y2hlc1swXSAqIEJJVFNfUEVSX0JZVEUpKSB7Cj4gLQkJRFJNX0RFQlVHX0tNUygi
SW52YWxpZCB2YWx1ZSBvZiAocGl0Y2ggKiBCSVRTX1BFUl9CWVRFKSAoPSV1KSAiCj4gLQkJCSAg
ICAgICJzaG91bGQgYmUgc2FtZSBhcyB3aWR0aCAoPSV1KSAqIGJwcCAoPSV1KVxuIiwKPiAtCQkJ
ICAgICAgKG1vZGVfY21kLT5waXRjaGVzWzBdICogQklUU19QRVJfQllURSksCj4gLQkJCSAgICAg
IG1vZGVfY21kLT53aWR0aCwgYnBwKTsKPiAtCQlyZXR1cm4gZmFsc2U7Cj4gLQl9Cj4gLQo+ICAJ
b2JqcyA9IGRybV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBtb2RlX2NtZC0+aGFuZGxlc1swXSk7
Cj4gIAlpZiAoIW9ianMpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJGYWlsZWQgdG8gbG9va3VwIEdF
TSBvYmplY3RcbiIpOwo+ICAJCXJldHVybiBmYWxzZTsKPiAgCX0KPiAgCj4gLQlpZiAob2Jqcy0+
c2l6ZSA8IGFmYmNfc2l6ZSkgewo+IC0JCURSTV9ERUJVR19LTVMoImJ1ZmZlciBzaXplICglenUp
IHRvbyBzbWFsbCBmb3IgQUZCQyBidWZmZXIgc2l6ZSA9ICV1XG4iLAo+IC0JCQkgICAgICBvYmpz
LT5zaXplLCBhZmJjX3NpemUpOwo+ICsJaWYgKCFkcm1fYWZiY19nZXRfc3VwZXJibGtfd2gobW9k
ZV9jbWQtPm1vZGlmaWVyWzBdLCAmdywgJmgpKQo+ICsJCXJldHVybiBmYWxzZTsKPiArCj4gKwlp
ZiAoIWRybV9hZmJjX2NoZWNrX2ZiX3NpemUobW9kZV9jbWQtPnBpdGNoZXNbMF0sIGJwcCwKPiAr
CQkJCSAgICBtb2RlX2NtZC0+d2lkdGgsIG1vZGVfY21kLT5oZWlnaHQsIHcsIGgsCj4gKwkJCQkg
ICAgb2Jqcy0+c2l6ZSwgbW9kZV9jbWQtPm9mZnNldHNbMF0sCj4gKwkJCQkgICAgQUZCQ19TVVBF
UkJMS19BTElHTk1FTlQpKSB7Cj4gIAkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKG9ianMp
Owo+ICsKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAl9Cj4gIAo+IC0tIAo+IDIuMTcuMQo+IAoKLS0g
Cj09PT09PT09PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxk
LCAgfAp8IGJ1dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNv
ZGUhICAvCiAgLS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
