Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0506A974
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R+zwIr7rIvsFpNiCjvCA7ecg94vuXhvnFcylYfxJeOk=; b=Wco9xHU8vRSUUs06aMEWTrK2O
	vLC/F2Az1C9QZSgLG8Bj1m7Wfz8haL4ba5Mdsc/oiC/l1fh+LU68oE0P6qwVyZbONmY5nC9CyrlGu
	99XtvAC6jk1VXxZsoLPwmkDwbvFU0HOyLrECFrev0IwCrwTJtvF04d4GhnGgD+W2O4j9x9F35xZFT
	efBTdz/316lh52e0tLS87qUXn2F06CVX+d0IuqHGfLzU2BBiRU/8x31blDMSO694hizhKsImPz4n5
	2s0hqJaeefYZiaGOnnr+Cp0RSh9ERkUikNz5B5+LiwDi1rvSFeJmNM2xIkCWuVMGe9r8GILN8TkJj
	ouTpHYhWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNN1-0004St-UJ; Tue, 16 Jul 2019 13:19:52 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNMz-0004S3-H5
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:19:50 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 761C4764;
 Tue, 16 Jul 2019 21:19:47 +0800 (CST)
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
 P29801T140087795644160S1563283176506740_; 
 Tue, 16 Jul 2019 21:19:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cb1ff5a8f3532ccc52aaf61972cd1f23>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 47/57] clk: rockchip: rk3399: Set 50MHz ddr clock
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-48-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2583ad54-2d93-dcb4-d372-52a8b1f16106@rock-chips.com>
Date: Tue, 16 Jul 2019 21:19:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-48-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061949_760584_824EB0FD 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdXBwb3J0
IGZvciBzZXR0aW5nIDUwTUh6IGRkciBjbG9jay4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBD
aGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
X3JrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gaW5kZXggNWQx
YWQ5NGU4NS4uMWRlMjFjOWYzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGtfcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiBA
QCAtODI3LDYgKzgyNywxMCBAQCBzdGF0aWMgdWxvbmcgcmszMzk5X2Rkcl9zZXRfY2xrKHN0cnVj
dCByazMzOTlfY3J1ICpjcnUsCj4gICAKPiAgIAkvKiAgY2xrX2RkcmMgPT0gRFBMTCA9IDI0TUh6
IC8gcmVmZGl2ICogZmJkaXYgLyBwb3N0ZGl2MSAvIHBvc3RkaXYyICovCj4gICAJc3dpdGNoIChz
ZXRfcmF0ZSkgewo+ICsJY2FzZSA1MCAqIE1IejoKPiArCQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxs
X2RpdikKPiArCQl7LnJlZmRpdiA9IDEsIC5mYmRpdiA9IDEyLCAucG9zdGRpdjEgPSAzLCAucG9z
dGRpdjIgPSAyfTsKPiArCQlicmVhazsKPiAgIAljYXNlIDIwMCAqIE1IejoKPiAgIAkJZHBsbF9j
ZmcgPSAoc3RydWN0IHBsbF9kaXYpCj4gICAJCXsucmVmZGl2ID0gMSwgLmZiZGl2ID0gNTAsIC5w
b3N0ZGl2MSA9IDYsIC5wb3N0ZGl2MiA9IDF9OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
