Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DD0107ECB
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=to7Le0owJCdYMxcS//+xERzeIQIDyICMCWCNq/AWyF8=; b=kR8WdhrXIUgkb1T+fmwOQsoO0
	ILrUgHbSeaTaCAq7oKCSl/6Q2fOawa4FcVp23YuNNWZSEiqnPbd7dNHPDcIfvD9/eV0mj1mJZS1zB
	0Hk+z4ngWKjTaNd5J9SMMYwsxzKt+/90OY6kKBPxznqxLH8SAOLvH7Jg5gjQjf08oW+o3Q8Arh8+X
	j22e5TsTdFA4ir6iVTbAcNjLY+Gt0M0KfYqT9b0fqqYMf53S4JnwqVueJXx9gAtVwtZLvzhneY4+W
	ksXR6gJHhwZgL0nVYDzS5kWQJiSPFjv1lIk3dJWK8IlTQVK78t4v0tW1Xrk/r2uwwMejnnD4bFm6n
	+Z7f/4XbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWIX-0003ka-0S; Sat, 23 Nov 2019 14:22:05 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWIT-0003jy-8Y
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:22:03 +0000
Received: from localhost (unknown [192.168.167.225])
 by regular1.263xmail.com (Postfix) with ESMTP id 0E4BF20C;
 Sat, 23 Nov 2019 22:21:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P19472T140432839259904S1574518907196586_; 
 Sat, 23 Nov 2019 22:21:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dd29772c257dc66ff424aca55276576>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: marex@denx.de
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 07/10] usb: dwc3: Add phy interface for dwc3_uboot
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <44578402-9771-0458-6110-bb41f8de708c@rock-chips.com>
Date: Sat, 23 Nov 2019 22:21:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062201_852962_57414BB3 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Marek Vasut <marex@denx.de>, u-boot@lists.denx.de,
 Levin Du <djw@t-chip.com.cn>, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBVLUJvb3QgaGFz
IHR3byBkaWZmZXJlbnQgdmFyaWFudHMgb2YgZHdjMyBpbml0aWFsaXphdGlvbnMsCj4gLSB3aXRo
IGRtIHZhcmlhbnQgZ2FkZ2V0LCBzbyB0aGUgcmVzcGVjdGl2ZSBkbSBkcml2ZXIgd291bGQKPiAg
ICBjYWxsIHRoZSBkd2MzX2luaXQgaW4gY29yZS4KPiAtIHdpdGggbm9uLWRtIHZhcmlhbnQgZ2Fk
Z2V0LCBzbyB0aGUgdXNhZ2UgYm9hcmQgZmlsZSB3b3VsZAo+ICAgIGNhbGwgZHdjM191Ym9vdF9p
bml0IGluIGNvcmUuCj4KPiBUaGUgZHJpdmVyIHByb2JlIHdvdWxkIGhhbmRsZSBhbGwgcmVzcGVj
dGl2ZSBnYWRnZXQgcHJvcGVydGllcwo+IGluY2x1ZGluZyBwaHkgaW50ZXJmYWNlIHZpYSBwaHlf
dHlwZSBwcm9wZXJ0eSBhbmQgdGhlbiB0cmlnZ2VyCj4gZHdjM19pbml0IGZvciBkbS12YXJpYW50
IGdhZGdldHMuCj4KPiBTbywgdG8gc3VwcG9ydCB0aGUgcGh5IGludGVyZmFjZSBmb3Igbm9uLWRt
IHZhcmlhbnQgZ2FkZ2V0cywKPiB0aGUgYmV0dGVyIG9wdGlvbiBpcyBkd2MzX3Vib290X2luaXQg
c2luY2UgdGhlcmUgaXMgbm8KPiBkZWRpY2F0ZWQgY29udHJvbGxlciBmb3Igbm9uLWRtIHZhcmlh
bnQgZ2FkZ2V0cy4KPgo+IFRoaXMgcGF0Y2ggc3VwcG9ydCBmb3IgYWRkaW5nIHBoeSBpbnRlcmZh
Y2UgbGlrZSA4LzE2LWJpdCBVVE1JKwo+IGNvZGUgZm9yIGR3YzNfdWJvb3QuCj4KPiBUaGlzIGNo
YW5nZSB1c2VkIExpbnV4IHBoeS5oIGVudW0gbGlzdCwgdG8gbWFrZSBwcm9wZXIgY29kZQo+IGNv
bXBhdGliaWxpdHkuCj4KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4gVGVzdGVk
LWJ5OiBMZXZpbiBEdSA8ZGp3QHQtY2hpcC5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4g
VGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFu
ZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAg
ZHJpdmVycy91c2IvZHdjMy9jb3JlLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgIGRyaXZlcnMvdXNiL2R3YzMvY29yZS5oIHwgMTIgKysrKysrKysrKysrCj4gICBpbmNsdWRl
L2R3YzMtdWJvb3QuaCAgICB8ICAyICsrCj4gICBpbmNsdWRlL2xpbnV4L3VzYi9waHkuaCB8IDE5
ICsrKysrKysrKysrKysrKysrKysKPiAgIDQgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygr
KQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvdXNiL3BoeS5oCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy91c2IvZHdjMy9jb3JlLmMgYi9kcml2ZXJzL3VzYi9kd2MzL2NvcmUu
Ywo+IGluZGV4IDIzYWY2MGM5OGQuLmY3Nzk1NjJkZTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91
c2IvZHdjMy9jb3JlLmMKPiArKysgYi9kcml2ZXJzL3VzYi9kd2MzL2NvcmUuYwo+IEBAIC02MTMs
NiArNjEzLDMxIEBAIHN0YXRpYyB2b2lkIGR3YzNfY29yZV9leGl0X21vZGUoc3RydWN0IGR3YzMg
KmR3YykKPiAgIAlkd2MzX2dhZGdldF9ydW4oZHdjKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgdm9p
ZCBkd2MzX3Vib290X2hzcGh5X21vZGUoc3RydWN0IGR3YzNfZGV2aWNlICpkd2MzX2RldiwKPiAr
CQkJCSAgc3RydWN0IGR3YzMgKmR3YykKPiArewo+ICsJZW51bSB1c2JfcGh5X2ludGVyZmFjZSBo
c3BoeV9tb2RlID0gZHdjM19kZXYtPmhzcGh5X21vZGU7Cj4gKwl1MzIgcmVnOwo+ICsKPiArCS8q
IFNldCBkd2MzIHVzYjIgcGh5IGNvbmZpZyAqLwo+ICsJcmVnID0gZHdjM19yZWFkbChkd2MtPnJl
Z3MsIERXQzNfR1VTQjJQSFlDRkcoMCkpOwo+ICsJcmVnIHw9IERXQzNfR1VTQjJQSFlDRkdfUEhZ
SUY7Cj4gKwlyZWcgJj0gfkRXQzNfR1VTQjJQSFlDRkdfVVNCVFJEVElNX01BU0s7Cj4gKwo+ICsJ
c3dpdGNoIChoc3BoeV9tb2RlKSB7Cj4gKwljYXNlIFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9VVE1J
Ogo+ICsJCXJlZyB8PSBEV0MzX0dVU0IyUEhZQ0ZHX1VTQlRSRFRJTV84QklUOwo+ICsJCWJyZWFr
Owo+ICsJY2FzZSBVU0JQSFlfSU5URVJGQUNFX01PREVfVVRNSVc6Cj4gKwkJcmVnIHw9IERXQzNf
R1VTQjJQSFlDRkdfVVNCVFJEVElNXzE2QklUOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiAr
CQlicmVhazsKPiArCX0KPiArCj4gKwlkd2MzX3dyaXRlbChkd2MtPnJlZ3MsIERXQzNfR1VTQjJQ
SFlDRkcoMCksIHJlZyk7Cj4gK30KPiArCj4gICAjZGVmaW5lIERXQzNfQUxJR05fTUFTSwkJKDE2
IC0gMSkKPiAgIAo+ICAgLyoqCj4gQEAgLTcyMSw2ICs3NDYsOCBAQCBpbnQgZHdjM191Ym9vdF9p
bml0KHN0cnVjdCBkd2MzX2RldmljZSAqZHdjM19kZXYpCj4gICAJCWdvdG8gZXJyMDsKPiAgIAl9
Cj4gICAKPiArCWR3YzNfdWJvb3RfaHNwaHlfbW9kZShkd2MzX2RldiwgZHdjKTsKPiArCj4gICAJ
cmV0ID0gZHdjM19ldmVudF9idWZmZXJzX3NldHVwKGR3Yyk7Cj4gICAJaWYgKHJldCkgewo+ICAg
CQlkZXZfZXJyKGR3Yy0+ZGV2LCAiZmFpbGVkIHRvIHNldHVwIGV2ZW50IGJ1ZmZlcnNcbiIpOwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9kd2MzL2NvcmUuaCBiL2RyaXZlcnMvdXNiL2R3YzMv
Y29yZS5oCj4gaW5kZXggYmU5NjcyMjY2YS4uYmZmNTNlMDcyYiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3VzYi9kd2MzL2NvcmUuaAo+ICsrKyBiL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5oCj4gQEAg
LTE2Miw2ICsxNjIsMTggQEAKPiAgIC8qIEdsb2JhbCBVU0IyIFBIWSBDb25maWd1cmF0aW9uIFJl
Z2lzdGVyICovCj4gICAjZGVmaW5lIERXQzNfR1VTQjJQSFlDRkdfUEhZU09GVFJTVAkoMSA8PCAz
MSkKPiAgICNkZWZpbmUgRFdDM19HVVNCMlBIWUNGR19TVVNQSFkJCSgxIDw8IDYpCj4gKyNkZWZp
bmUgRFdDM19HVVNCMlBIWUNGR19QSFlJRgkJQklUKDMpCj4gKwo+ICsvKiBHbG9iYWwgVVNCMiBQ
SFkgQ29uZmlndXJhdGlvbiBNYXNrICovCj4gKyNkZWZpbmUgRFdDM19HVVNCMlBIWUNGR19VU0JU
UkRUSU1fTUFTSwkJKDB4ZiA8PCAxMCkKPiArCj4gKy8qIEdsb2JhbCBVU0IyIFBIWSBDb25maWd1
cmF0aW9uIE9mZnNldCAqLwo+ICsjZGVmaW5lIERXQzNfR1VTQjJQSFlDRkdfVVNCVFJEVElNX09G
RlNFVAkxMAo+ICsKPiArI2RlZmluZSBEV0MzX0dVU0IyUEhZQ0ZHX1VTQlRSRFRJTV8xNkJJVAko
MHg1IDw8IFwKPiArCQlEV0MzX0dVU0IyUEhZQ0ZHX1VTQlRSRFRJTV9PRkZTRVQpCj4gKyNkZWZp
bmUgRFdDM19HVVNCMlBIWUNGR19VU0JUUkRUSU1fOEJJVAkJKDB4OSA8PCBcCj4gKwkJRFdDM19H
VVNCMlBIWUNGR19VU0JUUkRUSU1fT0ZGU0VUKQo+ICAgCj4gICAvKiBHbG9iYWwgVVNCMyBQSVBF
IENvbnRyb2wgUmVnaXN0ZXIgKi8KPiAgICNkZWZpbmUgRFdDM19HVVNCM1BJUEVDVExfUEhZU09G
VFJTVAkoMSA8PCAzMSkKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kd2MzLXVib290LmggYi9pbmNs
dWRlL2R3YzMtdWJvb3QuaAo+IGluZGV4IDk5NDFjYzM3YTMuLjNjOWUyMDRjZjAgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9kd2MzLXVib290LmgKPiArKysgYi9pbmNsdWRlL2R3YzMtdWJvb3QuaAo+
IEBAIC0xMCwxMCArMTAsMTIgQEAKPiAgICNkZWZpbmUgX19EV0MzX1VCT09UX0hfCj4gICAKPiAg
ICNpbmNsdWRlIDxsaW51eC91c2Ivb3RnLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC91c2IvcGh5Lmg+
Cj4gICAKPiAgIHN0cnVjdCBkd2MzX2RldmljZSB7Cj4gICAJdW5zaWduZWQgbG9uZyBiYXNlOwo+
ICAgCWVudW0gdXNiX2RyX21vZGUgZHJfbW9kZTsKPiArCWVudW0gdXNiX3BoeV9pbnRlcmZhY2Ug
aHNwaHlfbW9kZTsKPiAgIAl1MzIgbWF4aW11bV9zcGVlZDsKPiAgIAl1bnNpZ25lZCB0eF9maWZv
X3Jlc2l6ZToxOwo+ICAgCXVuc2lnbmVkIGhhc19scG1fZXJyYXR1bTsKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC91c2IvcGh5LmggYi9pbmNsdWRlL2xpbnV4L3VzYi9waHkuaAo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uMTU4Y2E5Y2Q4NQo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9pbmNsdWRlL2xpbnV4L3VzYi9waHkuaAo+IEBAIC0wLDAgKzEsMTkgQEAK
PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiArLyoKPiArICogVVNC
IFBIWSBkZWZpbmVzCj4gKyAqCj4gKyAqIFRoZXNlIEFQSXMgbWF5IGJlIHVzZWQgYmV0d2VlbiBV
U0IgY29udHJvbGxlcnMuICBVU0IgZGV2aWNlIGRyaXZlcnMKPiArICogKGZvciBlaXRoZXIgaG9z
dCBvciBwZXJpcGhlcmFsIHJvbGVzKSBkb24ndCB1c2UgdGhlc2UgY2FsbHM7IHRoZXkKPiArICog
Y29udGludWUgdG8gdXNlIGp1c3QgdXNiX2RldmljZSBhbmQgdXNiX2dhZGdldC4KPiArICovCj4g
Kwo+ICsjaWZuZGVmIF9fTElOVVhfVVNCX1BIWV9ICj4gKyNkZWZpbmUgX19MSU5VWF9VU0JfUEhZ
X0gKPiArCj4gK2VudW0gdXNiX3BoeV9pbnRlcmZhY2Ugewo+ICsJVVNCUEhZX0lOVEVSRkFDRV9N
T0RFX1VOS05PV04sCj4gKwlVU0JQSFlfSU5URVJGQUNFX01PREVfVVRNSSwKPiArCVVTQlBIWV9J
TlRFUkZBQ0VfTU9ERV9VVE1JVywKPiArfTsKPiArCj4gKyNlbmRpZiAvKiBfX0xJTlVYX1VTQl9Q
SFlfSCAqLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
