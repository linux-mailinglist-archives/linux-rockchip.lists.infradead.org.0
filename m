Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE026A961
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D5jIIeYzW5+RpNcsgbMLBMIs3cYVkfaWrHRzywELQAA=; b=SlZhMQo/xeBrgEqzx47A3bBpE
	tm5pBd3EDWFQUu0CbppbNevlyFb6H1OsZxrf+LxuKFKMZQCMX+KIa0QuhRctYv+dzdrzPOpzn8k4W
	eBy7jtXQ61UaY+HysSJuh/wDEUOr0Ht42bL3U7aGqSt8ccCCZrtcDEpAGE0tsiwbTvE8tHvJsDNQf
	VcDS+3FHqzBgDG7sEUuGUWeSzdbNDQsdJW2Lz+MZZSEfpBYrqUfdBKhqqHbt3sHt6U4VLZrL9tu4S
	frZWKeovwkKKMrgjeiTds0KYyMyaCZ60NIQa1OfU6iuUWZoraAYCMlgoJCyKlVG6xIgOEfDXTxOlf
	jODetoXmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNKX-0003pJ-9K; Tue, 16 Jul 2019 13:17:17 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNKO-0003oV-EW
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:17:15 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 4F67C5C7;
 Tue, 16 Jul 2019 21:17:06 +0800 (CST)
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
 P28302T140710199133952S1563283015597380_; 
 Tue, 16 Jul 2019 21:17:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ecab55f3b6f532377b17e97cdbef5c8d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 39/57] ram: rk3399: Update lpddr4 mode_sel based on io
 settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-40-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <d5e22a4c-a5e3-0361-8544-8c3d0866c749@rock-chips.com>
Date: Tue, 16 Jul 2019 21:16:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-40-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061714_171255_3128D96A 
X-CRM114-Status: GOOD (  14.89  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFRoZSBtb2RlX3Nl
bCBvbiBscGRkcjQgdmFsdWUgaXMgZGVwZW5kaW5nIG9uIElPIHNldHRpbmdzCj4gb2YgcmRfdnJl
Zi4KPgo+IEFkZCBzdXBwb3J0IGZvciBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVu
IDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA3ICsrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJh
bV9yazMzOTkuYwo+IGluZGV4IDRhMjYyMmE0NDAuLjYzNzYzMDYyZjkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9y
b2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0zNDcsNyArMzQ3LDcgQEAgc3RhdGljIGludCBw
aHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJdTMyIGRydl92
YWx1ZSwgb2R0X3ZhbHVlOwo+ICAgCXUzMiBzcGVlZDsKPiAgIAo+IC0JLyogdnJlZiBzZXR0aW5n
ICovCj4gKwkvKiB2cmVmIHNldHRpbmcgJiBtb2RlIHNldHRpbmcgKi8KPiAgIAlpZiAocGFyYW1z
LT5iYXNlLmRyYW10eXBlID09IExQRERSNCkgewo+ICAgCQlzdHJ1Y3QgaW9fc2V0dGluZyAqaW8g
PSBscGRkcjRfZ2V0X2lvX3NldHRpbmdzKHBhcmFtcywgbXI1KTsKPiAgIAkJdTMyIHJkX3ZyZWYg
PSBpby0+cmRfdnJlZiAqIDEwMDA7Cj4gQEAgLTM1NSwxNSArMzU1LDE4IEBAIHN0YXRpYyBpbnQg
cGh5X2lvX2NvbmZpZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQlpZiAocmRf
dnJlZiA8IDM2NzAwKSB7Cj4gICAJCQkvKiBNT0RFX0xWWzI6MF0gPSBMUEREUjQgKFJhbmdlIDIp
Ki8KPiAgIAkJCXZyZWZfbW9kZV9kcSA9IDB4NzsKPiArCQkJLyogTU9ERVsyOjBdPSBMUEREUjQg
UmFuZ2UgMigwLjQqVkREUSkgKi8KPiArCQkJbW9kZV9zZWwgPSAweDU7Cj4gICAJCQl2cmVmX3Zh
bHVlX2RxID0gKHJkX3ZyZWYgLSAzMzAwKSAvIDUyMTsKPiAgIAkJfSBlbHNlIHsKPiAgIAkJCS8q
IE1PREVfTFZbMjowXSA9IExQRERSNCAoUmFuZ2UgMSkqLwo+ICAgCQkJdnJlZl9tb2RlX2RxID0g
MHg2Owo+ICsJCQkvKiBNT0RFWzI6MF09IExQRERSNCBSYW5nZSAxKDAuMzMqVkREUSkgKi8KPiAr
CQkJbW9kZV9zZWwgPSAweDQ7Cj4gICAJCQl2cmVmX3ZhbHVlX2RxID0gKHJkX3ZyZWYgLSAxNTMw
MCkgLyA1MjE7Cj4gICAJCX0KPiAgIAkJdnJlZl9tb2RlX2FjID0gMHg2Owo+ICAgCQl2cmVmX3Zh
bHVlX2FjID0gMHgxZjsKPiAtCQltb2RlX3NlbCA9IDB4NjsKPiAgIAl9IGVsc2UgaWYgKHBhcmFt
cy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiAgIAkJaWYgKHBhcmFtcy0+YmFzZS5vZHQg
PT0gMSkgewo+ICAgCQkJdnJlZl9tb2RlX2RxID0gMHg1OyAgLyogTFBERFIzIE9EVCAqLwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
