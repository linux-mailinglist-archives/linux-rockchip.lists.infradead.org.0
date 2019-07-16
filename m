Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000956A949
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=09xEx6bKwIVxFY9ak6/cmGOhjjCPpqwl1YjTjVnZMKU=; b=UodHju+kml2+1wpBmSHyw7o0d
	+aMd/ico76f3pTYuuOV88nNxz4HY4Vt3L3WKPHuUJ83VgiUk47koUi244KWlDlHeq5wQENxHyaaNL
	b72gOJEw/Qxpk2ekP5KcVUrTyBDTo2MSGzAzgu5Jy/YlxWvlfYFTBc4ytAjOGgOddLFcp+tu2nXfG
	vcS/eLX3AZlqKM3okwL1lQ+KwsMUMmEe8zXQKkf56LdgtYIEOxvvYIraPS+OVNaL1xZ4ONnqf4ABJ
	rjvC5Mua9jELDidnyARGoYmE3GiL7Ar580hYu/Ha2fJIExlAu6t7qTYs+WntFv2qkcHlxeIbYJ/T1
	Na0JsgQjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNGH-0001ac-Tl; Tue, 16 Jul 2019 13:12:54 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNGC-0001a2-0M
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:12:52 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 2DDC7342;
 Tue, 16 Jul 2019 21:12:46 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P29801T140087486555904S1563282760639561_; 
 Tue, 16 Jul 2019 21:12:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9ae4ca00e333cef291662d587f1d4ae7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 25/57] ram: rk3399: Avoid two channel ZQ Cal Start at
 the same time
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-26-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cd5cd08d-26e6-26cd-e225-e298f17a31f7@rock-chips.com>
Date: Tue, 16 Jul 2019 21:12:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-26-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061251_099261_6529FD2B 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEl0IGlzIHBvc3Np
YmxlIGluIGxwZGRyNCBkcmFtLCB3aGVyZSBib3RoIHRoZSBjaGFubmVscyB3b3VsZAo+IHN0YXJ0
IGF0IHNhbWUgdGltZSB3aXRoIFpRIENhbCBTdGFydC4gSWYgaXQgdXNlcyBaUSBDYWxsIHN0YXJ0
Cj4gdGhlbiBpdCB3aWxsIHVzZSBSWlEuCj4KPiBGb3IgZXhhbXBsZSBMUEREUjQgMzY2IER1YWwt
RGllLCBRdWFkLUNoYW5uZWwgUGFja2FnZSwgUlpRIG1heWJlCj4gY29ubmVjdCB0byBib3RoIGNo
YW5uZWwuIElmIFpRIENhbCBTdGFydCBhdCB0aGUgc2FtZSB0aW1lLAo+IGl0IHdpbGwgdXNlIHRo
ZSBzYW1lIFJaUS4KPgo+IEl0IGlzIG5vdCBhIHByb2JsZW0gb2YgdXNpbmcgUlpRIGluIGJvdGgg
dGhlIGNoYW5uZWxzLCBidXQgY2FuIG5vdAo+IHVzZSBhdCB0aGUgc2FtZSB0aW1lLgo+Cj4gU28s
IHRvIGF2b2lkIHRoaXMsIHdlIGhhdmUgYW4gb3B0aW9uIG9mIGRyYW0gdElOSVQzIHZhbHVlIGZv
cgo+IGluY3JlYXNpbmcgdGhlIGZyZXF1ZW5jeSBmb3IgY2hhbm5lbCAxLgo+Cj4gVGhpcyBwYXRj
aCBpbmNyZWFzZSB0aGUgYXZhaWxhYmxlIHRJTklUMyB3aXRoIGV4aXN0aW5nIHJ1bm5pbmcKPiBk
cmFtIGZyZXF1ZW5jeS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1j
aGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAv
c2RyYW1fcmszMzk5LmMgfCAxNCArKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJh
bV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXgg
MDIzODM4YTMwMS4uYmViNGY2ZGU1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hp
cC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5
OS5jCj4gQEAgLTU1MCw2ICs1NTAsMjAgQEAgc3RhdGljIGludCBwY3RsX2NmZyhzdHJ1Y3QgZHJh
bV9pbmZvICpkcmFtLCBjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQkgICAgc2l6
ZW9mKHN0cnVjdCByazMzOTlfZGRyX3BjdGxfcmVncykgLSA0KTsKPiAgIAl3cml0ZWwocGFyYW1z
X2N0bFswXSwgJmRlbmFsaV9jdGxbMF0pOwo+ICAgCj4gKwkvKgo+ICsJICogdHdvIGNoYW5uZWwg
aW5pdCBhdCB0aGUgc2FtZSB0aW1lLCB0aGVuIFpRIENhbCBTdGFydAo+ICsJICogYXQgdGhlIHNh
bWUgdGltZSwgaXQgd2lsbCB1c2UgdGhlIHNhbWUgUlpRLCBidXQgY2Fubm90Cj4gKwkgKiBzdGFy
dCBhdCB0aGUgc2FtZSB0aW1lLgo+ICsJICoKPiArCSAqIFNvLCBpbmNyZWFzZSB0SU5JVDMgZm9y
IGNoYW5uZWwgMSwgd2lsbCBhdm9pZCB0d28KPiArCSAqIGNoYW5uZWwgWlEgQ2FsIFN0YXJ0IGF0
IHRoZSBzYW1lIHRpbWUKPiArCSAqLwo+ICsJaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBM
UEREUjQgJiYgY2hhbm5lbCA9PSAxKSB7Cj4gKwkJdG1wID0gKChwYXJhbXMtPmJhc2UuZGRyX2Zy
ZXEgKiBNSHogKyA5OTkpIC8gMTAwMCk7Cj4gKwkJdG1wMSA9IHJlYWRsKCZkZW5hbGlfY3RsWzE0
XSk7Cj4gKwkJd3JpdGVsKHRtcCArIHRtcDEsICZkZW5hbGlfY3RsWzE0XSk7Cj4gKwl9Cj4gKwo+
ICAgCWNvcHlfdG9fcmVnKGRlbmFsaV9waSwgJnBhcmFtcy0+cGlfcmVncy5kZW5hbGlfcGlbMF0s
Cj4gICAJCSAgICBzaXplb2Yoc3RydWN0IHJrMzM5OV9kZHJfcGlfcmVncykpOwo+ICAgCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
