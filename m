Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5F9107ECD
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N97RQFqKUeBVdvEAkTX9gq1YDLTs1fnenoDuOIEmJgs=; b=fY4rSIL/hD2fh/K+0rhKeFEaE
	5EegVcl5ei10MIz3m0QKOLJ2ULI9ksTZIT7NoEzCSDipj01gbpPKVEtDmX6MK9dEFnmDM/UwPpXSI
	EG/4g1Dp9kFAHHl7BL/PZxAD9SlSuMYUCwU925+GAu/XQYLuVgGXqWcnredAfLoLxFOShG8WhlHyX
	rNjJaLE3sb+gBUkiV/+DvcFteyxHhCewb0uGQUSonZIvvgxxzgU1lHaRRq3rJuJL1QYCqoXlF753g
	kNJIAlamleBGmu8C5wAWpRB1sCgY/wIm5/g27teR/qZBSFCCfMqkRBu0H74JZPwYskubsBUuk1gsb
	+cd7neohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWIj-0003pv-Dx; Sat, 23 Nov 2019 14:22:17 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWIg-0003n6-EA
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:22:15 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 939A4394;
 Sat, 23 Nov 2019 22:22:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P24681T140252492592896S1574518924303469_; 
 Sat, 23 Nov 2019 22:22:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <adebda83052fc2d425be1b29613ee255>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: marex@denx.de
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 09/10] rockchip: Setup dwc3_device (for non-dm gadgets)
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2d8589bf-e9b9-d72f-2c9b-0629ad199b9b@rock-chips.com>
Date: Sat, 23 Nov 2019 22:22:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062214_741833_AF3453A5 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBTZXR1cCBkd2Mz
X2RldmljZSBzdHJ1Y3R1cmUgZm9yIG5vbi1kbSBnYWRnZXRzLCB3aGljaCBpcyB1c2VkCj4gaW4g
cmszMzk5IHBsYXRmb3Jtcy4KPgo+IGR3YzNfZGV2aWNlIHdvdWxkIGhhdmUgYmFzaWMgcmVnYmFz
ZSwgZHJfbW9kZSwgaGlnaCBzcGVlZAo+IGFuZCAxNi1iaXQgVVRNSSsgZXRjLgo+Cj4gQ2M6IE1h
cmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+IFRlc3RlZC1ieTogTGV2aW4gRHUgPGRqd0B0LWNo
aXAuY29tLmNuPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1
dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAv
Ym9hcmQuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2JvYXJkLmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlw
L2JvYXJkLmMKPiBpbmRleCBjOTBlYjk3NmQwLi41NDI4MjNiOGNkIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL21hY2gtcm9ja2NoaXAvYm9hcmQuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvYm9hcmQuYwo+IEBAIC00OSw4ICs0OSwxMCBAQCB2b2lkIGVuYWJsZV9jYWNoZXModm9pZCkK
PiAgIH0KPiAgICNlbmRpZgo+ICAgCj4gLSNpZiBkZWZpbmVkKENPTkZJR19VU0JfR0FER0VUKSAm
JiBkZWZpbmVkKENPTkZJR19VU0JfR0FER0VUX0RXQzJfT1RHKQo+ICsjaWYgZGVmaW5lZChDT05G
SUdfVVNCX0dBREdFVCkKPiAgICNpbmNsdWRlIDx1c2IuaD4KPiArCj4gKyNpZiBkZWZpbmVkKENP
TkZJR19VU0JfR0FER0VUX0RXQzJfT1RHKQo+ICAgI2luY2x1ZGUgPHVzYi9kd2MyX3VkYy5oPgo+
ICAgCj4gICBzdGF0aWMgc3RydWN0IGR3YzJfcGxhdF9vdGdfZGF0YSBvdGdfZGF0YSA9IHsKPiBA
QCAtMTE3LDcgKzExOSwzMyBAQCBpbnQgYm9hcmRfdXNiX2NsZWFudXAoaW50IGluZGV4LCBlbnVt
IHVzYl9pbml0X3R5cGUgaW5pdCkKPiAgIHsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAtI2VuZGlm
Cj4gKyNlbmRpZiAvKiBDT05GSUdfVVNCX0dBREdFVF9EV0MyX09URyAqLwo+ICsKPiArI2lmIGRl
ZmluZWQoQ09ORklHX1VTQl9EV0MzKSAmJiAhZGVmaW5lZChDT05GSUdfRE1fVVNCX0dBREdFVCkK
PiArI2luY2x1ZGUgPGR3YzMtdWJvb3QuaD4KPiArCj4gK3N0YXRpYyBzdHJ1Y3QgZHdjM19kZXZp
Y2UgZHdjM19kZXZpY2VfZGF0YSA9IHsKPiArCS5tYXhpbXVtX3NwZWVkID0gVVNCX1NQRUVEX0hJ
R0gsCj4gKwkuYmFzZSA9IDB4ZmU4MDAwMDAsCj4gKwkuZHJfbW9kZSA9IFVTQl9EUl9NT0RFX1BF
UklQSEVSQUwsCj4gKwkuaW5kZXggPSAwLAo+ICsJLmRpc191Ml9zdXNwaHlfcXVpcmsgPSAxLAo+
ICsJLmhzcGh5X21vZGUgPSBVU0JQSFlfSU5URVJGQUNFX01PREVfVVRNSVcsCj4gK307Cj4gKwo+
ICtpbnQgdXNiX2dhZGdldF9oYW5kbGVfaW50ZXJydXB0cyh2b2lkKQo+ICt7Cj4gKwlkd2MzX3Vi
b290X2hhbmRsZV9pbnRlcnJ1cHQoMCk7Cj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAraW50IGJv
YXJkX3VzYl9pbml0KGludCBpbmRleCwgZW51bSB1c2JfaW5pdF90eXBlIGluaXQpCj4gK3sKPiAr
CXJldHVybiBkd2MzX3Vib290X2luaXQoJmR3YzNfZGV2aWNlX2RhdGEpOwo+ICt9Cj4gKyNlbmRp
ZiAvKiBDT05GSUdfVVNCX0RXQzMgKi8KPiArCj4gKyNlbmRpZiAvKiBDT05GSUdfVVNCX0dBREdF
VCAqLwo+ICAgCj4gICAjaWYgQ09ORklHX0lTX0VOQUJMRUQoRkFTVEJPT1QpCj4gICBpbnQgZmFz
dGJvb3Rfc2V0X3JlYm9vdF9mbGFnKHZvaWQpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
