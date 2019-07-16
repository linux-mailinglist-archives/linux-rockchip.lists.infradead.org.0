Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246BF6A954
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eyrWX21ZoTb9dGs+Apv/H68xb2DSz4KYnRuRTh+X8GQ=; b=mZ++lyM4b3H8PqOWuTuY9EggE
	IR+B+LICth2FfKZBM+f3p82O6CNWiBfh6YihotPrF263G9LIgL+NqTeP86u7EOBsoMLafvSfZ2Ax3
	XZ3kGSG+8Z5/bEj1+zzAhEL0Hdj7IhshaZxy7uP0FsPgQ40W1NZ8VOHGZVlnlasnUFWIoxd5QoClQ
	Jd/BYziak+devnOdGq5wV/PBGHSanKd96fLKic8y+GO+ykXU594UMrRNzr/ViBW9eeIXTELHU5lnD
	/RGj4DJuiYMIu6dCG26/9VItu1rv2DYX4bP4ymzTCZEPAZ/2sFrJNECltH8sCfHvgrIguPxmzcesj
	Xo0X7dBZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNHS-0001qS-5y; Tue, 16 Jul 2019 13:14:06 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNHP-0001q5-CV
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:14:04 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 4FCFA22C;
 Tue, 16 Jul 2019 21:14:01 +0800 (CST)
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
 P29801T140086398154496S1563282837860157_; 
 Tue, 16 Jul 2019 21:13:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <254715fe3219c0fa90b9e817ace046fb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 30/57] ram: rk3399: Map chipselect for lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-31-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b4554d85-6a69-bd68-df46-c343311b95bd@rock-chips.com>
Date: Tue, 16 Jul 2019 21:13:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-31-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061403_638015_FF894F1C 
X-CRM114-Status: GOOD (  12.62  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFzc2lnbiBkZXNp
cmVkIGNzX21hcCB2YWx1ZXMgZm9yIGxwZGRyNCBkdXJpbmcgc2V0IG1lbW9yeSBtYXAuCj4KPiBJ
bml0aWFsIGNzX21hcCB2YWx1ZXMgaXMgYmFzZWQgb24gdGhlIHNkcmFtIHBhcmFtZXRlcnMsIHNv
Cj4gdGhlIHNhbWUgd2lsbCBhZGp1c3RlZCBiYXNlZCBkcmFtdHlwZSBhcyBMUEREUjQuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQt
Ynk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0g
S2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgMTAg
KysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggMmFiMTBkYTUzZi4uNzY4OTcxMWE5OSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBi
L2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTE4OCw2ICsxODgsMTYg
QEAgc3RhdGljIHZvaWQgc2V0X21lbW9yeV9tYXAoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwgdTMyIGNoYW5uZWwsCj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGlbMTU1XSwgKDB4
MyA8PCAxNikgfCAoMHg3IDw8IDI0KSwKPiAgIAkJCSgoMyAtIHNkcmFtX2NoLT5jYXBfaW5mby5i
aykgPDwgMTYpIHwKPiAgIAkJCSgoMTYgLSByb3cpIDw8IDI0KSk7Cj4gKwo+ICsJaWYgKElTX0VO
QUJMRUQoQ09ORklHX1JBTV9SSzMzOTlfTFBERFI0KSkgewo+ICsJCWlmIChjc19tYXAgPT0gMSkK
PiArCQkJY3NfbWFwID0gMHg1Owo+ICsJCWVsc2UgaWYgKGNzX21hcCA9PSAyKQo+ICsJCQljc19t
YXAgPSAweGE7Cj4gKwkJZWxzZQo+ICsJCQljc19tYXAgPSAweEY7Cj4gKwl9Cj4gKwo+ICAgCS8q
IFBJXzQxIFBJX0NTX01BUDpSVzoyNDo0ICovCj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlf
cGlbNDFdLCAweGYgPDwgMjQsIGNzX21hcCA8PCAyNCk7Cj4gICAJaWYgKHNkcmFtX2NoLT5jYXBf
aW5mby5yYW5rID09IDEgJiYgcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IEREUjMpCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
