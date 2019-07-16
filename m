Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13636A340
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nZsQe8C0aeyJhcs/ccSI54NQ5cKy6DPUYhp7+zwf9K8=; b=O6PiHczoZ4Wv8ONmp51ZbiRNk
	Co8Lexr5s+Ng+MHteqFvovgj+e2j68J3Aq+QcqnH/Gv5iTSA0kkfExig8W+eEUurN6Pg65g/nTJEd
	p/kXdUMToQY7w2RU4dNETzZDOUM2hsnEoKcF5/0w26q3LrIE2xMdN/h56K07g+YdjnRF7sTFbyFJn
	S9URce5arPgR2pgezeTmC9H1ncg5HEsgjBS5D/6UYoaOTkCR7PSg6xsDZX+ZGxgQ4LgsuRxt5NaVO
	28X60Z4AYh2/GKwKI7FxtFHtiRe5xRZ3XDscjZuMRxhBdd7ITdLGlzoitYs0aHhQHU22LOSL0MxPj
	xiCp41qEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIDG-0001Io-T4; Tue, 16 Jul 2019 07:49:27 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIDD-0001IR-Nx
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:49:25 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id D56AE394;
 Tue, 16 Jul 2019 15:49:21 +0800 (CST)
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
 P28302T140709839501056S1563263345896673_; 
 Tue, 16 Jul 2019 15:49:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aeb84af10e1b44f410d531697000b3f0>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 17/18] ram: rk3399: Enable sdram debug functions
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-18-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3416c78d-b1c3-a556-5730-041337085b62@rock-chips.com>
Date: Tue, 16 Jul 2019 15:49:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-18-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004923_979663_7A4845E5 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFRoaXMgd291bGQg
aGVscCB0byBkZWJ1ZyB0aGUgc2RyYW0gYmFzZSBwYXJhbWV0ZXJzIHdoaWxlCj4gZGVidWdnaW5n
IGV4aXN0aW5nIGNoaXAgb3Igd2hpbGUgc3VwcG9ydGluZyBuZXcgc2RyYW0gdHlwZS4KPgo+IEl0
IHJlcXVpcmUgZXhwbGljaXQgZW5hYmxlbWVudCBvZiBDT05GSUdfUkFNX1JPQ0tDSElQX0RFQlVH
Cj4gZm9yIHNob3dpbmcgdGhlIGRlYnVnIHByaW50cy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlh
bmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0K
PiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgNSArKysrKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMKPiBpbmRleCBiODM5NTVmOTRlLi45YTYwYzI0MTM1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTI1MSw2ICsxMjUxLDggQEAgc3RhdGljIHVuc2lnbmVk
IGNoYXIgY2FsY3VsYXRlX3N0cmlkZShzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1z
KQo+ICAgCQl9Cj4gICAJfQo+ICAgCj4gKwlzZHJhbV9wcmludF9zdHJpZGUoc3RyaWRlKTsKPiAr
Cj4gICAJcmV0dXJuIHN0cmlkZTsKPiAgIH0KPiAgIAo+IEBAIC0xMzU3LDExICsxMzU5LDE0IEBA
IHN0YXRpYyBpbnQgc2RyYW1faW5pdChzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQlkZWJ1
ZygiQ2hhbm5lbCAiKTsKPiAgIAkJZGVidWcoY2hhbm5lbCA/ICIxOiAiIDogIjA6ICIpOwo+ICAg
Cj4gKwkJc2RyYW1fcHJpbnRfZGRyX2luZm8oY2FwX2luZm8sICZwYXJhbXMtPmJhc2UpOwo+ICsK
PiAgIAkJc2V0X2RkcmNvbmZpZyhjaGFuLCBwYXJhbXMsIGNoYW5uZWwsIGNhcF9pbmZvLT5kZHJj
b25maWcpOwo+ICAgCX0KPiAgIAo+ICAgCWlmIChwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzID09
IDApIHsKPiAgIAkJcHJpbnRmKCIlczogIiwgX19mdW5jX18pOwo+ICsJCXNkcmFtX3ByaW50X2Ry
YW1fdHlwZShwYXJhbXMtPmJhc2UuZHJhbXR5cGUpOwo+ICAgCQlwcmludGYoIiAtICVkTUh6IGZh
aWxlZCFcbiIsIHBhcmFtcy0+YmFzZS5kZHJfZnJlcSk7Cj4gICAJCXJldHVybiAtRUlOVkFMOwo+
ICAgCX0KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
