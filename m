Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709AA6A95F
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JYyKYi0El9/rFriTlGavrYlOInDyx4gbq10uvXkrUj0=; b=cHWBapHPgoXiqiXGpBzwU64CA
	AzSieGAxpdviFhqsBxRwAeu3kxi9xW3cUG8lJlWprYPNUeKfqZ4oX2fokCAMcPAeAOQqSq8Wpt4pR
	Ae4Kbqkemen2i6sY08MSiTAV9vTvv4L/k+qpzQN8kRSudvl298olS80bsI8TlEBYkZwMk2dUxSzyE
	3uH54Ssr2yVUFyl1bvnfcU3MXLbNs0zczh4TWV/qRCIooNamLVweSF6v8AhGPxGcvwTSRFIRNUtT2
	EoUYilySHgx6bKDsK1r6IW+XtNkEU5x/Au96FYmgna+VEySnj8GWESpOhE2lFlRrcBX9ZT56cAg7d
	+oZM0uXsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNJi-0003XK-Fb; Tue, 16 Jul 2019 13:16:26 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNJf-0003Wi-Km
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:16:25 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 60E7920C;
 Tue, 16 Jul 2019 21:16:21 +0800 (CST)
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
 P25752T140260545656576S1563282972123824_; 
 Tue, 16 Jul 2019 21:16:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <edb0bd704fa835363d389693d48a1db1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 38/57] ram: rk3399: Update lpddr4 vref based on io
 settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-39-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <710a87bb-5960-154c-0f86-29705d20dbc7@rock-chips.com>
Date: Tue, 16 Jul 2019 21:16:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-39-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061623_892372_6644432E 
X-CRM114-Status: GOOD (  15.48  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFRoZSB2cmVmX21v
ZGVfZHEsIHZyZWZfdmFsdWVfZHEgb24gbHBkZHI0IHZhbHVlIGlzIGRlcGVuZGluZwo+IG9uIElP
IHNldHRpbmdzIG9mIHJkX3ZyZWYuCj4KPiBBZGQgc3VwcG9ydCBmb3IgaXQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIK
PiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgMTkgKysrKysr
KysrKysrKystLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDUgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDllNDA4
ODA4MzUuLjRhMjYyMmE0NDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2Ry
YW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+
IEBAIC0zMzgsNyArMzM4LDcgQEAgc3RhdGljIHZvaWQgc2V0X21lbW9yeV9tYXAoY29uc3Qgc3Ry
dWN0IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBp
bnQgcGh5X2lvX2NvbmZpZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+IC0JCQkgY29u
c3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiArCQkJIGNvbnN0IHN0cnVj
dCByazMzOTlfc2RyYW1fcGFyYW1zICpwYXJhbXMsIHUzMiBtcjUpCj4gICB7Cj4gICAJdTMyICpk
ZW5hbGlfcGh5ID0gY2hhbi0+cHVibC0+ZGVuYWxpX3BoeTsKPiAgIAl1MzIgdnJlZl9tb2RlX2Rx
LCB2cmVmX3ZhbHVlX2RxLCB2cmVmX21vZGVfYWMsIHZyZWZfdmFsdWVfYWM7Cj4gQEAgLTM0OSw5
ICszNDksMTggQEAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2lu
Zm8gKmNoYW4sCj4gICAKPiAgIAkvKiB2cmVmIHNldHRpbmcgKi8KPiAgIAlpZiAocGFyYW1zLT5i
YXNlLmRyYW10eXBlID09IExQRERSNCkgewo+IC0JCS8qIExQRERSNCAqLwo+IC0JCXZyZWZfbW9k
ZV9kcSA9IDB4NjsKPiAtCQl2cmVmX3ZhbHVlX2RxID0gMHgxZjsKPiArCQlzdHJ1Y3QgaW9fc2V0
dGluZyAqaW8gPSBscGRkcjRfZ2V0X2lvX3NldHRpbmdzKHBhcmFtcywgbXI1KTsKPiArCQl1MzIg
cmRfdnJlZiA9IGlvLT5yZF92cmVmICogMTAwMDsKPiArCj4gKwkJaWYgKHJkX3ZyZWYgPCAzNjcw
MCkgewo+ICsJCQkvKiBNT0RFX0xWWzI6MF0gPSBMUEREUjQgKFJhbmdlIDIpKi8KPiArCQkJdnJl
Zl9tb2RlX2RxID0gMHg3Owo+ICsJCQl2cmVmX3ZhbHVlX2RxID0gKHJkX3ZyZWYgLSAzMzAwKSAv
IDUyMTsKPiArCQl9IGVsc2Ugewo+ICsJCQkvKiBNT0RFX0xWWzI6MF0gPSBMUEREUjQgKFJhbmdl
IDEpKi8KPiArCQkJdnJlZl9tb2RlX2RxID0gMHg2Owo+ICsJCQl2cmVmX3ZhbHVlX2RxID0gKHJk
X3ZyZWYgLSAxNTMwMCkgLyA1MjE7Cj4gKwkJfQo+ICAgCQl2cmVmX21vZGVfYWMgPSAweDY7Cj4g
ICAJCXZyZWZfdmFsdWVfYWMgPSAweDFmOwo+ICAgCQltb2RlX3NlbCA9IDB4NjsKPiBAQCAtNzcw
LDcgKzc3OSw3IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5m
byAqY2hhbiwKPiAgIAkvKiBwaHlfcGFkX2ZkYmtfdGVybSAxYml0IERFTkFMSV9QSFlfOTMwIG9m
ZnNldF8xNyAqLwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MzBdLCAweDEgPDwg
MTcsIHJlZ192YWx1ZSk7Cj4gICAKPiAtCXBoeV9pb19jb25maWcoY2hhbiwgcGFyYW1zKTsKPiAr
CXBoeV9pb19jb25maWcoY2hhbiwgcGFyYW1zLCBtcjUpOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMg
dm9pZCBwY3RsX3N0YXJ0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sIHU4IGNoYW5uZWwpCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
