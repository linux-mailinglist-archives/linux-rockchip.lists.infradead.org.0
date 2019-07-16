Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC356A94A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bjyy/zGBE6nGv+vOwRrQAbW25zV66CbpLFaZ+AvyYe8=; b=AuWswQmOC1Ve+ZfRHtVhqA4SB
	S4/SXpkpuQws89wDGv+hNrW65Ubs0Va1MuRlNMGh9EXqH3yvB0BjdSOucYESPkdI6qhrBLtrRWb+J
	T37H7giZyvfFbtswPNvwe9/52Ya91TtHhaZO7tWSTDl6AfzcXB6Z5LY94tqYmmHHMzpTHTRelUzK8
	6hj+ewg10h3lAP/gUfYbwZwwOqwUeGUsJX0X6lpWKlDeEdJNtAU3v0odNpikcTQMi0kSAVydSb6nW
	EAZvXgjRVtGT+aWysOTwEJDnOLVhUj/a60dHJ++4sL4JKVofp8WrpAC/CAvTUF2n/Tj73RjczNXw4
	xD/F8NqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNGL-0001ch-S4; Tue, 16 Jul 2019 13:12:57 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNGI-0001aa-Kq
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:12:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 74D875ED;
 Tue, 16 Jul 2019 21:12:52 +0800 (CST)
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
 P25752T140260524676864S1563282770252514_; 
 Tue, 16 Jul 2019 21:12:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fd7e36d197e97f8620e5d3019e531a3f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 26/57] ram: rk3399: Configure PHY_898, PHY_919 for
 lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-27-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9378b262-0ede-20d4-a955-28db998fc435@rock-chips.com>
Date: Tue, 16 Jul 2019 21:12:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-27-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061254_902846_3F5738EF 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFBIWV84OTgsIFBI
WV85MTkgd291bGQgcmVxdWlyZSB0byBjb25maWd1cmUgUEhZIExQNCBib290Cj4gcGxsIGNvbnRy
b2wgYW5kIGNhIGZvciBscGRkcjQuCj4KPiBTbywgY29uZmlndXJlIHRoZSBzYW1lIGluIHBjdGxf
Y2ZnIGZvciBMUEREUjQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2st
Y2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlw
L3NkcmFtX3JrMzM5OS5jIHwgNSArKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5j
IGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBiZWI0ZjZkZTU0
Li43NjI1NTA2NDU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAt
NTc0LDYgKzU3NCwxMSBAQCBzdGF0aWMgaW50IHBjdGxfY2ZnKHN0cnVjdCBkcmFtX2luZm8gKmRy
YW0sIGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJd3JpdGVsKHBhcmFtcy0+cGh5
X3JlZ3MuZGVuYWxpX3BoeVs5MTFdLCAmZGVuYWxpX3BoeVs5MTFdKTsKPiAgIAl3cml0ZWwocGFy
YW1zLT5waHlfcmVncy5kZW5hbGlfcGh5WzkxMl0sICZkZW5hbGlfcGh5WzkxMl0pOwo+ICAgCj4g
KwlpZiAoSVNfRU5BQkxFRChDT05GSUdfUkFNX1JLMzM5OV9MUEREUjQpKSB7Cj4gKwkJd3JpdGVs
KHBhcmFtcy0+cGh5X3JlZ3MuZGVuYWxpX3BoeVs4OThdLCAmZGVuYWxpX3BoeVs4OThdKTsKPiAr
CQl3cml0ZWwocGFyYW1zLT5waHlfcmVncy5kZW5hbGlfcGh5WzkxOV0sICZkZW5hbGlfcGh5Wzkx
OV0pOwo+ICsJfQo+ICsKPiAgIAlkcmFtLT5wd3J1cF9zcmVmcmVzaF9leGl0W2NoYW5uZWxdID0g
cmVhZGwoJmRlbmFsaV9jdGxbNjhdKSAmCj4gICAJCQkJCSAgICAgUFdSVVBfU1JFRlJFU0hfRVhJ
VDsKPiAgIAljbHJiaXRzX2xlMzIoJmRlbmFsaV9jdGxbNjhdLCBQV1JVUF9TUkVGUkVTSF9FWElU
KTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
