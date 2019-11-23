Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D83107F10
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 16:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LRdco1hJsCnZIKhNgVPVM9yb7iwwd/zE2Y8ybH7oIgY=; b=agDPIA4Rn0pQf+Xep4kw97yBG
	nwQjAFgEsIeacPSyAaSNfxlixh3/e7zIIBXjA66XaoeTpGEOfSZB73H9nqPr9hu1YnxYpJjHkaFz0
	RLfGu7uSU8bjKus75dZGUbm3aL+tpvryIY+pcQ1gjtAcsSFOxX0doKm4kMj7vbT/ynxm2FlQO4HJ+
	6U5d1b803O5Tf+dC9ITkmNZbdOLxZFZxjsM8u6Yhxnewz4sYGjYzRACgWYnSK3sMe5yZo8mhkenA2
	MwXVCoTLh4UTBtqDPv1rXLcdWRWH8oGdz/ifxlREh1VTnutQ3yGrXrrnpXyEaMPRpOCulL7/wiHfE
	K0CoWN4kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYXTw-0003k8-D8; Sat, 23 Nov 2019 15:37:56 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYXTs-0003jD-8G
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 15:37:54 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 9BDEB265;
 Sat, 23 Nov 2019 23:37:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P9522T140270110754560S1574523440747118_; 
 Sat, 23 Nov 2019 23:37:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <869eb1d38560b048e6cadb0cffae2d51>
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
Message-ID: <62d009ed-8ef4-4fc6-67ff-ca28af94f501@rock-chips.com>
Date: Sat, 23 Nov 2019 23:37:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_073752_859628_EE6529ED 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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

SmFnYW4sCgpPbiAyMDE5LzExLzE5IOS4i+WNiDQ6MjYsIEphZ2FuIFRla2kgd3JvdGU6Cj4gU2V0
dXAgZHdjM19kZXZpY2Ugc3RydWN0dXJlIGZvciBub24tZG0gZ2FkZ2V0cywgd2hpY2ggaXMgdXNl
ZAo+IGluIHJrMzM5OSBwbGF0Zm9ybXMuCj4KPiBkd2MzX2RldmljZSB3b3VsZCBoYXZlIGJhc2lj
IHJlZ2Jhc2UsIGRyX21vZGUsIGhpZ2ggc3BlZWQKPiBhbmQgMTYtYml0IFVUTUkrIGV0Yy4KPgo+
IENjOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPiBUZXN0ZWQtYnk6IExldmluIER1IDxk
andAdC1jaGlwLmNvbS5jbj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvYm9hcmQu
YyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLXJvY2tjaGlwL2JvYXJkLmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2JvYXJk
LmMKPiBpbmRleCBjOTBlYjk3NmQwLi41NDI4MjNiOGNkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L21hY2gtcm9ja2NoaXAvYm9hcmQuYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvYm9h
cmQuYwo+IEBAIC00OSw4ICs0OSwxMCBAQCB2b2lkIGVuYWJsZV9jYWNoZXModm9pZCkKPiAgIH0K
PiAgICNlbmRpZgo+ICAgCj4gLSNpZiBkZWZpbmVkKENPTkZJR19VU0JfR0FER0VUKSAmJiBkZWZp
bmVkKENPTkZJR19VU0JfR0FER0VUX0RXQzJfT1RHKQo+ICsjaWYgZGVmaW5lZChDT05GSUdfVVNC
X0dBREdFVCkKPiAgICNpbmNsdWRlIDx1c2IuaD4KPiArCj4gKyNpZiBkZWZpbmVkKENPTkZJR19V
U0JfR0FER0VUX0RXQzJfT1RHKQo+ICAgI2luY2x1ZGUgPHVzYi9kd2MyX3VkYy5oPgo+ICAgCj4g
ICBzdGF0aWMgc3RydWN0IGR3YzJfcGxhdF9vdGdfZGF0YSBvdGdfZGF0YSA9IHsKPiBAQCAtMTE3
LDcgKzExOSwzMyBAQCBpbnQgYm9hcmRfdXNiX2NsZWFudXAoaW50IGluZGV4LCBlbnVtIHVzYl9p
bml0X3R5cGUgaW5pdCkKPiAgIHsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAtI2VuZGlmCj4gKyNl
bmRpZiAvKiBDT05GSUdfVVNCX0dBREdFVF9EV0MyX09URyAqLwo+ICsKPiArI2lmIGRlZmluZWQo
Q09ORklHX1VTQl9EV0MzKSAmJiAhZGVmaW5lZChDT05GSUdfRE1fVVNCX0dBREdFVCkKCkkgYmVs
aWV2ZSB3ZSBzaG91bGQgdXNlIENPTkZJR19VU0JfRFdDM19HQURHRVQgaW5zdGVhZCBvZiBDT05G
SUdfVVNCX0RXQzMuCgpUaGlzIHBhdGNoIGNhdXNlIGJlbG93IGVycm9yOgoKIMKgwqAgYWFyY2g2
NDrCoCArwqDCoCByb2NrNjQtcmszMzI4CithcmNoL2FybS9tYWNoLXJvY2tjaGlwL2JvYXJkLmM6
MTQyOjU6IGVycm9yOiByZWRlZmluaXRpb24gb2YgCuKAmGJvYXJkX3VzYl9pbml04oCZCisgaW50
IGJvYXJkX3VzYl9pbml0KGludCBpbmRleCwgZW51bSB1c2JfaW5pdF90eXBlIGluaXQpCivCoMKg
wqDCoCBefn5+fn5+fn5+fn5+fgorYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9ib2FyZC5jOjY0OjU6
IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2YgCuKAmGJvYXJkX3VzYl9pbml04oCZIHdhcyBo
ZXJlCittYWtlWzJdOiAqKiogW2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvYm9hcmQub10gRXJyb3Ig
MQoKVGhhbmtzLAoKLSBLZXZlcgoKPiArI2luY2x1ZGUgPGR3YzMtdWJvb3QuaD4KPiArCj4gK3N0
YXRpYyBzdHJ1Y3QgZHdjM19kZXZpY2UgZHdjM19kZXZpY2VfZGF0YSA9IHsKPiArCS5tYXhpbXVt
X3NwZWVkID0gVVNCX1NQRUVEX0hJR0gsCj4gKwkuYmFzZSA9IDB4ZmU4MDAwMDAsCj4gKwkuZHJf
bW9kZSA9IFVTQl9EUl9NT0RFX1BFUklQSEVSQUwsCj4gKwkuaW5kZXggPSAwLAo+ICsJLmRpc191
Ml9zdXNwaHlfcXVpcmsgPSAxLAo+ICsJLmhzcGh5X21vZGUgPSBVU0JQSFlfSU5URVJGQUNFX01P
REVfVVRNSVcsCj4gK307Cj4gKwo+ICtpbnQgdXNiX2dhZGdldF9oYW5kbGVfaW50ZXJydXB0cyh2
b2lkKQo+ICt7Cj4gKwlkd2MzX3Vib290X2hhbmRsZV9pbnRlcnJ1cHQoMCk7Cj4gKwlyZXR1cm4g
MDsKPiArfQo+ICsKPiAraW50IGJvYXJkX3VzYl9pbml0KGludCBpbmRleCwgZW51bSB1c2JfaW5p
dF90eXBlIGluaXQpCj4gK3sKPiArCXJldHVybiBkd2MzX3Vib290X2luaXQoJmR3YzNfZGV2aWNl
X2RhdGEpOwo+ICt9Cj4gKyNlbmRpZiAvKiBDT05GSUdfVVNCX0RXQzMgKi8KPiArCj4gKyNlbmRp
ZiAvKiBDT05GSUdfVVNCX0dBREdFVCAqLwo+ICAgCj4gICAjaWYgQ09ORklHX0lTX0VOQUJMRUQo
RkFTVEJPT1QpCj4gICBpbnQgZmFzdGJvb3Rfc2V0X3JlYm9vdF9mbGFnKHZvaWQpCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
