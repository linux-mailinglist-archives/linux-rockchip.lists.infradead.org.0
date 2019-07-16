Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D57A6A311
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9THuTiVKMftvFUFis4eksxxCmBx50xpZyvul9o4vEEc=; b=ZDeJmbMGr76Xi45ptUDpK98Z0
	do1hGUzTnnYv9n26IdEBw83l3Ulr9f+9zxvW0rxg/zeUctWBeg1sGf46aKtVbSarrlG7FqwEp15mD
	XujRZvf+zMl6okKr7WdyYqIpcOJi5pp4GnxhBStI/lfdLnX8ev9/r4L08KT3cu7ZANpzDiXrDr5xE
	5btfpXVDn2Ve7eMKE9ISCgxOr+F8tHm3O+4tL5G8jkOcsitMv97HzFrGKke75D/0wKdUn1EIvbh5t
	dcSZKMP9cVLv2+5ypod2IoZG5+AvwUb/6TAdEHwQi8wjFqPMUjVDoYOV0WQ+ea4Qqh/hyadsiMJRE
	L+Y76WQog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI2t-0005EG-2C; Tue, 16 Jul 2019 07:38:43 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI2p-0005De-9k
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:38:40 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.177])
 by regular1.263xmail.com (Postfix) with ESMTP id ACB2F3C1;
 Tue, 16 Jul 2019 15:38:37 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25935T140681452451584S1563262714721600_; 
 Tue, 16 Jul 2019 15:38:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <95c25d39ff3238a33da7432c43353d41>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 04/18] ram: rk3399: Use rank mask in wdql data training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <36190f32-6128-8d44-5a1f-05a05694dc8d@rock-chips.com>
Date: Tue, 16 Jul 2019 15:38:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003839_505024_38418BC3 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyLCB0aGlzIHdvdWxkIGtlZXAKPiB0aGUgd2RxbCBk
YXRhIHRyYWluaW5nIGxvb3AgYmFzZWQgb24gdGhlIGRlc2lyZWQgcmFuayBtYXNrCj4gdmFsdWUg
aW5zdGVhZCBvZiBsb29waW5nIGZvciBhbGwgdmFsdWVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91
TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxL
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBk
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDggKysrKysrKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggYjk4ZGYyMGZhNS4uMTZiZDk0MjdhNiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTg2MSwxMSArODYxLDE3IEBAIHN0
YXRpYyBpbnQgZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4s
IHUzMiBjaGFubmVsLAo+ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFsaV9waTsK
PiAgIAl1MzIgaSwgdG1wOwo+ICAgCXUzMiByYW5rID0gcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBf
aW5mby5yYW5rOwo+ICsJdTMyIHJhbmtfbWFzazsKPiAgIAo+ICAgCS8qIGNsZWFyIGludGVycnVw
dCxQSV8xNzUgUElfSU5UX0FDSzpXUjowOjE3ICovCj4gICAJd3JpdGVsKDB4MDAwMDNmN2MsICgm
ZGVuYWxpX3BpWzE3NV0pKTsKPiAgIAo+IC0JZm9yIChpID0gMDsgaSA8IHJhbms7IGkrKykgewo+
ICsJcmFua19tYXNrID0gKHJhbmsgPT0gMSkgPyAweDEgOiAweDM7Cj4gKwo+ICsJZm9yIChpID0g
MDsgaSA8IDQ7IGkrKykgewo+ICsJCWlmICghKHJhbmtfbWFzayAmICgxIDw8IGkpKSkKPiArCQkJ
Y29udGludWU7Cj4gKwo+ICAgCQlzZWxlY3RfcGVyX2NzX3RyYWluaW5nX2luZGV4KGNoYW4sIGkp
Owo+ICAgCj4gICAJCS8qCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
