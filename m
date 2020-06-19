Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BB3200433
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jun 2020 10:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hg2PhmpFVpSKckiUPVxw99MgwSQcEEbZVmgicbSHrq0=; b=FFHreWsURY4Kt849o2X9iBgfP
	5j6WP2RUtnUMjFhw6EoB10UlDX9A8piO4pfLswQbMlBn2pDXVnd312IJBCLM/sS4QhBOD2pnRhADT
	3Iv8FF7LDQ4+4B6bfMPT7X4NLbWu33WbNae5rwRxCbQLRyq/97C6GmJ/qZ/2MR174B7m+A9zm078s
	S2LOOrnjcNXskAADHlHUdZwiOEUBOkJcmw9kMB6iFsfH3Rp7fbP5XGaBQuTMDiUQKjOxhOWWUHvDy
	U7z18WoNoHRwtO+TRX/aWdT4kob7vaY2Ot9xT/ReBwrf99cAxnKGzRVmu0z76wmu9ziZ4AJHRv2et
	R5MBkTkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCYZ-0001IK-Js; Fri, 19 Jun 2020 08:39:27 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCYM-0001A1-UX; Fri, 19 Jun 2020 08:39:16 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 5FCE413DD;
 Fri, 19 Jun 2020 16:39:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7896T140607601231616S1592555948689939_; 
 Fri, 19 Jun 2020 16:39:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a251438a6d703a40437df80de2a62cbd>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH] drm/rockchip: vop: fix vop full rgb24 r/b color error
To: Heiko Stuebner <heiko@sntech.de>
References: <20200619021251.22991-1-hjc@rock-chips.com>
 <2786595.VspqIdsi2r@phil>
From: Huang Jiachai <hjc@rock-chips.com>
Message-ID: <0fe318e7-2f35-d311-ff3a-b67cc527cc87@rock-chips.com>
Date: Fri, 19 Jun 2020 16:39:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <2786595.VspqIdsi2r@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_013915_346029_0EEE635B 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: huangtao@rock-chips.com, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 andy.yan@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgaGVpa28sCgrU2iAyMDIwLzYvMTkgMTU6MDIsIEhlaWtvIFN0dWVibmVyINC0tcA6Cj4gSGkg
U2FuZHksCj4KPiBBbSBGcmVpdGFnLCAxOS4gSnVuaSAyMDIwLCAwNDoxMjo1MSBDRVNUIHNjaHJp
ZWIgU2FuZHkgSHVhbmc6Cj4+IFJHQjg4OCBmb3JtYXQgbXNiIGlzIHJlZCBjb21wb25lbnQgYW5k
IHRoZSBsc2IgaXMgYmx1ZSBjb21wb25lbnQsCj4+IGF0IHZvcCBmdWxsIHBsYXRmb3JtIHRoaXMg
aXMgc3dhcHBlZCwgYW5kIHRoaXMgaXMgZGlmZmVyZW50IGZyb20gdm9wCj4+IGxpdGUgYW5kIHZv
cCBuZXh0LCBzbyBhZGQgdGhpcyBwYXRjaCB0byBmaXggaXQuCj4ganVzdCBtZSBzdHJ1Z2dsaW5n
IHdpdGggY29sb3IgZm9ybWF0cyAuLi4gYW5kIHdvbmRlcmluZyB3aHkgdGhpcyBuZXZlcgo+IGNh
bWUgdXAgc28gZmFyIC0gd2l0aCBWZXJzaW9uIDMgYmVpbmcgYWxsIG1ham9yIFNvQ3Mgb2YgdGhl
IGxhc3QgeWVhcnMuCj4KPiBTbyBJIGd1ZXNzIHRoZSByZWFzb24gdGhhdCBub2JvZHkgbm90aWNl
ZCBzbyBmYXIgaXMsIHRoYXQgbW9zdCB0aGluZ3MKPiB3aWxsIHVzZSBBUkdCODg4IGluc3RlYWQg
b2YgUkdCODg4Pwp5ZXMsIG1vc3QgZ3B1IG91dHB1dCBmb3JtYXQgaXMgQVJHQjg4OCwgc28gd2Ug
ZGlkbid0IG5vdGljZWQgaXQgYmVmb3JlLgo+IE9uZSBpbXBsZW1lbnRhdGlvbiBuaXQgYmVsb3cg
YXMgd2VsbC4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMu
Y29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jIHwgOCArKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+IGluZGV4
IGM4MGY3ZDlmZDEzZi4uMWMxNzA0OGFkNzM3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4gQEAgLTEzMiw2ICsxMzIsNyBAQCBzdHJ1Y3Qg
dm9wX3dpbiB7Cj4+ICAgCj4+ICAgc3RydWN0IHJvY2tjaGlwX3JnYjsKPj4gICBzdHJ1Y3Qgdm9w
IHsKPj4gKwl1aW50MzJfdCB2ZXJzaW9uOwo+PiAgIAlzdHJ1Y3QgZHJtX2NydGMgY3J0YzsKPj4g
ICAJc3RydWN0IGRldmljZSAqZGV2Owo+PiAgIAlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldjsK
Pj4gQEAgLTk4OSw2ICs5OTAsMTIgQEAgc3RhdGljIHZvaWQgdm9wX3BsYW5lX2F0b21pY191cGRh
dGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCj4+ICAgCVZPUF9XSU5fU0VUKHZvcCwgd2luLCBk
c3Bfc3QsIGRzcF9zdCk7Cj4+ICAgCj4+ICAgCXJiX3N3YXAgPSBoYXNfcmJfc3dhcHBlZChmYi0+
Zm9ybWF0LT5mb3JtYXQpOwo+PiArCS8qCj4+ICsJICogVk9QIGZ1bGwgbmVlZCB0byBkbyByYiBz
d2FwIHRvIHNob3cgcmdiODg4L2Jncjg4OCBmb3JtYXQgY29sb3IgY29ycmVjdGx5Cj4+ICsJICov
Cj4gb25lLWxpbmUtY29tbWVudD8KPiAJLyogVk9QLWZ1bGwgbmVlZHMgcmJfc3dhcCBmb3IgY29y
cmVjdGx5IHNob3dpbmcgcmdiODg4L2Jncjg4OCAqLwo+Cj4+ICsJaWYgKChmYi0+Zm9ybWF0LT5m
b3JtYXQgPT0gRFJNX0ZPUk1BVF9SR0I4ODggfHwgZmItPmZvcm1hdC0+Zm9ybWF0ID09IERSTV9G
T1JNQVRfQkdSODg4KSAmJgo+PiArCSAgICBWT1BfTUFKT1Iodm9wLT52ZXJzaW9uKSA9PSAzKQo+
PiArCQlyYl9zd2FwID0gIXJiX3N3YXA7Cj4gY2FuIHdlIG1vdmUgdGhpcyBpbnRvIHRoZSBleGlz
dGluZyBoYXNfcmJfc3dhcHBlZCgpIGZ1bmN0aW9uPwo+IExpa2UgZG9pbmcKPiAJcmJfc3dhcCA9
IGhhc19yYl9zd2FwcGVkKHZvcCwgZmItPmZvcm1hdC0+Zm9ybWF0KQo+IGFuZCBhZGRpbmcgeW91
ciBjb25kaXRpb25hbCB0byB0aGUgZW5kIHRoZXJlPwo+Ck9LLCB1cGRhdGUgYXQgdjIuCj4gVGhh
bmtzCj4gSGVpa28KPgo+Cj4+ICAgCVZPUF9XSU5fU0VUKHZvcCwgd2luLCByYl9zd2FwLCByYl9z
d2FwKTsKPj4gICAKPj4gICAJLyoKPj4gQEAgLTIwOTEsNiArMjA5OCw3IEBAIHN0YXRpYyBpbnQg
dm9wX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQg
KmRhdGEpCj4+ICAgCXZvcC0+ZGV2ID0gZGV2Owo+PiAgIAl2b3AtPmRhdGEgPSB2b3BfZGF0YTsK
Pj4gICAJdm9wLT5kcm1fZGV2ID0gZHJtX2RldjsKPj4gKwl2b3AtPnZlcnNpb24gPSB2b3BfZGF0
YS0+dmVyc2lvbjsKPj4gICAJZGV2X3NldF9kcnZkYXRhKGRldiwgdm9wKTsKPj4gICAKPj4gICAJ
dm9wX3dpbl9pbml0KHZvcCk7Cj4+Cj4KPgo+Cj4KPgotLSAKQmVzdCBSZWdhcmQKCrvGvNLuzgpT
YW5keSBIdWFuZwpBZGRyOiC4o9bdytC5xMKlx/jNrcXMwrfI7bz+tPO1wDg5usW4o9bdyO28/tSw
Qcf4MjG6xcKlKDM1MDAwMykKICAgICAgIE5vLiAyMSBCdWlsZGluZywgQSBEaXN0cmljdCwgTm8u
ODksc29mdHdhcmUgQm91bGV2YXJkIEZ1emhvdSxGdWppYW4sUFJDClRlbKO6Kzg2IDA1OTEtODc4
ODQ5MTkgIDg2OTAKRS1tYWlso7poamNAcm9jay1jaGlwcy5jb20KCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
