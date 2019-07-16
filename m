Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E86A941
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9+PZm5MlYnJKLQWwTZSft/XurFZbqq+opsJrZGeyzxw=; b=WewfB3Z7+nuNOzMS9hhU1jUMY
	6BHnmVr/BcmmMbYu6ZldDyewnRjrZLUC+wKs57x6vVEIfHfDR4j8M2sy1G215hqEZgZOcuVzONBDt
	mfkUgFl2xbKL5ejpjQM/zlWDEA/YllrNa6wmtYBiGGf+W7bBiaHacbeqNk33iWufmZSo28kBno2ah
	pmiWl87mVU7LRcyQEUQU9O16SqRqWHHtZzOZVvp+uKMZZSB76KOy8gtGGKp4hxj2E8bFS4fHyq+ND
	dMVhPPUpje+fLctbmzRG5kJ2SE92pmCDFKOrRX2jXMlStFzooMvGkCrFeWFHViVxt/XNGZ1yD2Fo+
	5iSfODuCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNFH-00012V-7g; Tue, 16 Jul 2019 13:11:51 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNFD-000120-RQ
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:11:49 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 9C18C20C;
 Tue, 16 Jul 2019 21:11:45 +0800 (CST)
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
 P28302T140710055487232S1563282699463235_; 
 Tue, 16 Jul 2019 21:11:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <47221a3fa58f7167d40072b449e4eb75>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 21/57] ram: rk3399: Add lpddr4 rank mask for ca training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-22-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ba33907c-080a-1d82-eb2c-456deb7870bb@rock-chips.com>
Date: Tue, 16 Jul 2019 21:11:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-22-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061148_091092_1B0597BF 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyIGZvciBscGRkcjQuCj4KPiBUaGlzIHdvdWxkIGtl
ZXAgdGhlIGNhIGRhdGEgdHJhaW5pbmcgbG9vcCBiYXNlZCBvbiB0aGUKPiBkZXNpcmVkIHJhbmsg
bWFzayB2YWx1ZSBpbnN0ZWFkIG9mIGxvb3BpbmcgZm9yIGFsbCB2YWx1ZXMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIK
PiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgNSArKysrLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBhNDk2NzcyODVkLi44ZWNjM2ExYjc0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysr
IGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtNjg3LDcgKzY4Nywx
MCBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdfY2EoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAq
Y2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJLyogY2xlYXIgaW50ZXJydXB0LFBJXzE3NSBQSV9JTlRf
QUNLOldSOjA6MTcgKi8KPiAgIAl3cml0ZWwoMHgwMDAwM2Y3YywgKCZkZW5hbGlfcGlbMTc1XSkp
Owo+ICAgCj4gLQlyYW5rX21hc2sgPSAocmFuayA9PSAxKSA/IDB4MSA6IDB4MzsKPiArCWlmIChw
YXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gTFBERFI0KQo+ICsJCXJhbmtfbWFzayA9IChyYW5rID09
IDEpID8gMHg1IDogMHhmOwo+ICsJZWxzZQo+ICsJCXJhbmtfbWFzayA9IChyYW5rID09IDEpID8g
MHgxIDogMHgzOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IDQ7IGkrKykgewo+ICAgCQlpZiAo
IShyYW5rX21hc2sgJiAoMSA8PCBpKSkpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
