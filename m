Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9467A6A944
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Fe3BkUPrS41DekMaNfSpFW948xew83jX120pQ2sOGw=; b=pPa1YmjNiRbX+xBAbLAj+yTr0
	T55xGan65MCdKcO6IiKwjsoTFwEm0jAV5KHUHkx70wUEfLnut2sphwSedpEsNjQ6Md3v5ICxEPHCR
	gwfdi02p7EAeaLCVavMwVe0B6QukGEVCh2lgYNkpyoZhKT3nKEQwGWxNIM2+x7S2dzBh930qLgsMa
	jo993oRQ7kTPm9A1Eq/AB+L8GB+k8/FWQOin1VjFGMuWn5/S2+PmLrXWLIGVfl0ufG6wKRdE3wCxd
	5Rb8pXMg0x+Mjj8300WG7BmIV7bEa+morVlKVD9hBV/NYH8nQBNOk1usoCYHH9ksBIN9gYUpkVF5n
	kvPS+Gs9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNFh-0001Lb-S1; Tue, 16 Jul 2019 13:12:17 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNFe-0001KO-ST
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:12:16 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id E5D25474;
 Tue, 16 Jul 2019 21:12:11 +0800 (CST)
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
 P8795T139710991169280S1563282728332868_; 
 Tue, 16 Jul 2019 21:12:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bc71c8d20ec369a38303c21824075281>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 24/57] ram: rk3399: Don't wait for PLL lock in lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-25-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9d89edac-cb5a-f3ad-5020-2e0315ac73c7@rock-chips.com>
Date: Tue, 16 Jul 2019 21:12:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-25-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061215_115322_57C0200E 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGxwZGRyNCBoYXMg
UExMIGJ5cGFzcyBtb2RlIGR1cmluZyBwaHkgaW5pdGlhbGl6YXRpb24gcGhhc2UsCj4gd2hpY2gg
ZG9lcyBhbGwgcGxsIGNvbmZpZ3VyYXRpb25zLgo+Cj4gU28gbm8gbmVlZCB0byB3YWl0IGV4cGxp
Y2l0bHkgZHVyaW5nIHBjdGwgY29uZmlnLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4g
PGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDI2ICsrKysrKysrKysrKysrKystLS0tLS0tLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDg4ZmJmYTQ0MGQuLjAyMzgz
OGEzMDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMK
PiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC01NzAsMTYg
KzU3MCwyMiBAQCBzdGF0aWMgaW50IHBjdGxfY2ZnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sIGNv
bnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJc2V0Yml0c19sZTMyKCZkZW5hbGlfcGlb
MF0sIFNUQVJUKTsKPiAgIAlzZXRiaXRzX2xlMzIoJmRlbmFsaV9jdGxbMF0sIFNUQVJUKTsKPiAg
IAo+IC0JLyogV2FpdGluZyBmb3IgcGh5IERMTCBsb2NrICovCj4gLQl3aGlsZSAoMSkgewo+IC0J
CXRtcCA9IHJlYWRsKCZkZW5hbGlfcGh5WzkyMF0pOwo+IC0JCXRtcDEgPSByZWFkbCgmZGVuYWxp
X3BoeVs5MjFdKTsKPiAtCQl0bXAyID0gcmVhZGwoJmRlbmFsaV9waHlbOTIyXSk7Cj4gLQkJaWYg
KCgoKHRtcCA+PiAxNikgJiAweDEpID09IDB4MSkgJiYKPiAtCQkgICAgKCgodG1wMSA+PiAxNikg
JiAweDEpID09IDB4MSkgJiYKPiAtCQkgICAgKCgodG1wMSA+PiAwKSAmIDB4MSkgPT0gMHgxKSAm
Jgo+IC0JCSAgICAoKCh0bXAyID4+IDApICYgMHgxKSA9PSAweDEpKQo+IC0JCQlicmVhazsKPiAr
CS8qKgo+ICsJICogTFBERFI0IHVzZSBQTEwgYnlwYXNzIG1vZGUgZm9yIGluaXQKPiArCSAqIG5v
dCBuZWVkIHRvIHdhaXQgZm9yIHRoZSBQTEwgdG8gbG9jawo+ICsJICovCj4gKwlpZiAocGFyYW1z
LT5iYXNlLmRyYW10eXBlICE9IExQRERSNCkgewo+ICsJCS8qIFdhaXRpbmcgZm9yIHBoeSBETEwg
bG9jayAqLwo+ICsJCXdoaWxlICgxKSB7Cj4gKwkJCXRtcCA9IHJlYWRsKCZkZW5hbGlfcGh5Wzky
MF0pOwo+ICsJCQl0bXAxID0gcmVhZGwoJmRlbmFsaV9waHlbOTIxXSk7Cj4gKwkJCXRtcDIgPSBy
ZWFkbCgmZGVuYWxpX3BoeVs5MjJdKTsKPiArCQkJaWYgKCgoKHRtcCA+PiAxNikgJiAweDEpID09
IDB4MSkgJiYKPiArCQkJICAgICgoKHRtcDEgPj4gMTYpICYgMHgxKSA9PSAweDEpICYmCj4gKwkJ
CSAgICAoKCh0bXAxID4+IDApICYgMHgxKSA9PSAweDEpICYmCj4gKwkJCSAgICAoKCh0bXAyID4+
IDApICYgMHgxKSA9PSAweDEpKQo+ICsJCQkJYnJlYWs7Cj4gKwkJfQo+ICAgCX0KPiAgIAo+ICAg
CWNvcHlfdG9fcmVnKCZkZW5hbGlfcGh5Wzg5Nl0sICZwYXJhbXNfcGh5Wzg5Nl0sICg5NTggLSA4
OTUpICogNCk7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
