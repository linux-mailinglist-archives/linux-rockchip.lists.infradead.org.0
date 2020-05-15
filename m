Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEC61D436F
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rJ6cHkqpqVjDiWwtaJ51/zlJ6QfmiMlyYDzfofyFlnU=; b=POOQ777H3DuG3Be/wHzRhD7IR
	mmgPtBvitcvik/w4bJqcMYqxEQelyJJwsBm44mEix8l7SVrlEs/pd2z9B054+tldGtYDksFul8aP0
	I/S58bsGeYDAwCJQqFDMxzQJyT9sE2G3S+bA77IZE+gi8yWhEfTOEgdM/6AyEizEkDbsKhKNZCvVF
	7o/gg6x60yJqWsMYOkaSWkpQS3Xbs/v/K16IENuSxxLJEc6BTYx4WoeNY9RdJMSNCqt3Hf9LPjzO8
	a6oZ2BPhSejOf8LYBxaZZtKX8JcrZDZnuayaPZr8IS2cvL8xmCalwddcIMVs9lQwuLaqweKnNfiba
	EL7SGObNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZPt2-0007Fw-4M; Fri, 15 May 2020 02:15:44 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZPsy-0007En-6b
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:15:41 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id D2AC610BA;
 Fri, 15 May 2020 10:15:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P2324T140089552271104S1589508916893390_; 
 Fri, 15 May 2020 10:15:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3e985c46383eb7bac997cd7e43ac7803>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 01/16] clk: rk3399: Enable/Disable the USB2PHY clk
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071344.5430-2-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <932ce156-6947-4ffe-74f3-a3fbde39d65a@rock-chips.com>
Date: Fri, 15 May 2020 10:15:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071344.5430-2-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_191540_448667_FAB760D5 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjEzLCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gRW5hYmxlL0Rpc2FibGUgdGhl
IFVTQjJQSFkgY2xrIGZvciByazMzOTkuCj4KPiBDTEsgaXMgY2xlYXIgaW4gZW5hYmxlIGFuZCBz
ZXQgaW4gZGlzYWJsZSBmdW5jdGlvbmFsaXR5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBkcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgfCAxMiArKysrKysrKysrKysKPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrX3JrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5j
Cj4gaW5kZXggNWZiNzJkODNjMi4uYjUzZjJmOTg0ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtf
cmszMzk5LmMKPiBAQCAtMTA5MSw2ICsxMDkxLDEyIEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19l
bmFibGUoc3RydWN0IGNsayAqY2xrKQo+ICAgCWNhc2UgU0NMS19NQUNSRUZfT1VUOgo+ICAgCQly
a19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bNV0sIEJJVCg2KSk7Cj4gICAJCWJyZWFr
Owo+ICsJY2FzZSBTQ0xLX1VTQjJQSFkwX1JFRjoKPiArCQlya19jbHJyZWcoJnByaXYtPmNydS0+
Y2xrZ2F0ZV9jb25bNl0sIEJJVCg1KSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfVVNCMlBI
WTFfUkVGOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2Nvbls2XSwgQklUKDYp
KTsKPiArCQlicmVhazsKPiAgIAljYXNlIEFDTEtfR01BQzoKPiAgIAkJcmtfY2xycmVnKCZwcml2
LT5jcnUtPmNsa2dhdGVfY29uWzMyXSwgQklUKDApKTsKPiAgIAkJYnJlYWs7Cj4gQEAgLTExNjcs
NiArMTE3MywxMiBAQCBzdGF0aWMgaW50IHJrMzM5OV9jbGtfZGlzYWJsZShzdHJ1Y3QgY2xrICpj
bGspCj4gICAJY2FzZSBTQ0xLX01BQ1JFRl9PVVQ6Cj4gICAJCXJrX3NldHJlZygmcHJpdi0+Y3J1
LT5jbGtnYXRlX2Nvbls1XSwgQklUKDYpKTsKPiAgIAkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfVVNC
MlBIWTBfUkVGOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2Nvbls2XSwgQklU
KDUpKTsKPiArCQlicmVhazsKPiArCWNhc2UgU0NMS19VU0IyUEhZMV9SRUY6Cj4gKwkJcmtfc2V0
cmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzZdLCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICAg
CWNhc2UgQUNMS19HTUFDOgo+ICAgCQlya19zZXRyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25b
MzJdLCBCSVQoMCkpOwo+ICAgCQlicmVhazsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
