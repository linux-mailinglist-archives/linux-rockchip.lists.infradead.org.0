Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C45F19E726
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Apr 2020 20:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W//mff6DnspPUTz1U5kjv8R4R9r9QSo0wrFVUv5psJ4=; b=EEolVkf2EOvJtu
	mxZa2l8IPhth08bJ0dg4GbZRgLbRv9at2y4msA67mpLDe6e++68zGKnHRuEh473wLi2WHc7K1tG55
	VHqWaf7fsdqkDQ7j3pRRsBravrY3l/SiLrnpNd2fuF7RaiXNtcWZN/b8fnJ6kcmJ+upEnxRWRIUiD
	gMrN3khlSGpzEevOjKvalFYwx0AyNgcsMiznEqWbGmx2ogi7szQgvcqqyLhxBvAkkgKSaMbSk7Mxf
	RBNeza0poF9qbmhMsb1+hYiCOYCF66JbZUBlX/Eny68i8OqnZhhaWyBafeOBwfWjz/m5qh9zzJFWP
	Z8Eb06LJEWv+BoNeh1WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKnkJ-0004gM-E9; Sat, 04 Apr 2020 18:42:19 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKnk8-0004YS-71; Sat, 04 Apr 2020 18:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586025717;
 bh=trCALmJZseGACsClEdyAIz3NMsZceSEOXCi9yrgcNQs=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=sTbZanwSbwh6vReBP4BkKqrp7ZOjpXmptcnFPi5ADLqpp49BkB+OLkgyHYh6kDKkj
 xTqQQb5YLd5s8Yn6dTj2pWN97LTBTJvt31XQgvsjQheuJzokJXHWaIKjbqGXQt+M9r
 CconQOuVhX+4G50Z/U7XfA5QgRe2zQdRiFSEYruI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.138.81]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LcgZv-1iwDsw1e0F-00k4OB; Sat, 04
 Apr 2020 20:41:57 +0200
To: Shawn Lin <shawn.lin@rock-chips.com>
From: Soeren Moch <smoch@web.de>
Subject: [BUG] PCI: rockchip: rk3399: pcie switch support
Message-ID: <4d03dd8c-14f9-d1ef-6fd2-095423be3dd3@web.de>
Date: Sat, 4 Apr 2020 20:41:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:u8HfsDqQbXgpehXSoYFpxfi5/sgKOSigN7n7MgtbB5C25j4rBZE
 eGE3jCmubCFLRVXY5ow9YfrzR1y4iEx3+lCqq+xLpcfF/ysc4vcQA/sp5JvR9K6Ho4Ndwdi
 OoR9afTkZ1UrRAQEMSsLvwbxOkVMrl3dZejumepGQdhiC1BQ/bdk46ji4wAAS+iT13ga2wH
 hefwuPZ4NAj8oKdppUY7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vc8nQLqxyRM=:3XRlLs7Uzjecv1ItVf27yu
 daFevHFaCZTD6uB8dMGSlAlPpkjoegDMXZCdiCu8CnxRlJWnfm5ncblZI4aVdC8ySgKe+Yxnx
 BAtYH8eDB6WqeHpwEUiwPxckjACEkhAk8M8NbCNPTJcEaMlVU12j3exvNV5jPkFcucugmzqE+
 k5mlg9ro2elqx/7oo1sTsIBAkPnjURsS2vFvOBsbp11be5auGhrTl3vjC4MwjrYDAvW+Cb3e8
 zUFUZ10/4JqZgzd69LmCTdOaczh5bDQ9ExXA5V1Vk+KYXQg3sW3QRGg2DJioP1i/rHsg45ugB
 RFWCRmczSWC7DzHALi+3WjVZkzegMAi+RzBsKaQmNM9U0z1SC5cGkqOXuTM0U45kDF4D2QGjJ
 eBOJDoo+x2/O+T2HPHNGAgW8egP+COEHQUJQyng4yQbbWOZIvW706vjC+iQdW4Jb3MoYS6xko
 XGyIgLuD7k3aBgRfg4GIclWpLtczGyPtakEF0t51SYKDwxS2ciIc+AzBrqIA9NW2woP52GhPg
 537lZu0qDlmY/wQegcAjt5utLahU9DbcgiO3pSSzWscxAxM6rG5Vab5B+t06vTAidfnLdD35V
 t9WtjCQJ6f8ql7TrCqGVYZXNvk1ehVdcjxd0QI7e3U13bZTXjiCMV2/A478Lv1VOyQyaU2XIS
 80g3O7XAPP3uSlfw4QTJnSPahRP0nsGXwjnHBX/GprDDXuUAjQVN7MyWBWsHuO9HMWBl6huAc
 aFC+5QM4XK61vxQCsmtfuvGaiqH/OCf2yzYOo2BMPtxdgK1g8lWn8YpsnXGghMXP1u8JwL1db
 PYvS8yalTcQkYTHF2N03SH21/G4IShUNvTVJo7PD0c9s6SbnO3VFhQxUBjO/7q13XmUGTESen
 usOLjlc4SzFlvqcYfBO2ESMOmmsMI/3QxO++WCYXh3nMymf8hPYO9a8NogILIJ44BdsA5gEme
 R+dE8iaUFwWNW+tcEz5zfiwRL1oXoAe/zdW//siMtKFvZOwvqrz/mAVr+oD7NwQExvQVKsnNo
 XPMq0JbYHs9AWM0ccNQ9SrlM7qvKT5kOeg1SVmAvY/cyu1WhY8fEryNQvLSLAo6ZoPQ/JoWFU
 xKAum9PFS/UF+nLzIGw9apo6ZctN/t0P16WWAhxUOTU9iIyK1Kv+9EAZPJnS322tcm6wsN+wv
 +Y4801YFXKglwlBfJEXUX5Sa/gPJwb1P91tpZRhyxgF4Wa1ZlAhCqcf4Fwi8lB16POnwplm1q
 2iCdYJpL2qA5vGT6T
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_114208_594062_F798969D 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [smoch[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SSB3YW50IHRvIHVzZSBhIFBDSWUgc3dpdGNoIG9uIGEgUkszMzk5IGJhc2VkIFJvY2tQcm82NCBW
Mi4xIGJvYXJkLgoiTm9ybWFsIiBQQ0llIGNhcmRzIHdvcmsgKG1vc3RseSkganVzdCBmaW5lIG9u
IHRoaXMgYm9hcmQuIFRoZSBQQ0llCnN3aXRjaGVzIChJIHRyaWVkIFBlcmljb20gYW5kIEFTTWVk
aWEgYmFzZWQgc3dpdGNoZXMpIGFsc28gd29yayBmaW5lIG9uCm90aGVyIGJvYXJkcy4gVGhlIFJL
MzM5OSBQQ0llIGNvbnRyb2xsZXIgd2l0aCBwY2llX3JvY2tjaGlwX2hvc3QgZHJpdmVyCmFsc28g
cmVjb2duaXNlcyB0aGUgc3dpdGNoLCBidXQgZmFpbHMgdG8gaW5pdGlhbGl6ZSB0aGUgYnVzZXMg
YmVoaW5kIHRoZQpicmlkZ2UgcHJvcGVybHksIHNlZSBzeXNsb2cgZnJvbSBsaW51eC01LjYuMC4K
CkFueSBpZGVhcyB3aGF0IEkgZG8gd3JvbmcsIG9yIGFueSBzdWdnZXN0aW9ucyB3aGF0IEkgY2Fu
IHRlc3QgaGVyZT8KClRoYW5rcywKU29lcmVuCgoKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQg
a2VybmVsOiBbwqDCoCA3NC41MDE5NTFdIHJvY2tjaGlwLXBjaWUKZjgwMDAwMDAucGNpZTogZjgw
MDAwMDAucGNpZSBzdXBwbHkgdnBjaWUxdjggbm90IGZvdW5kLCB1c2luZyBkdW1teQpyZWd1bGF0
b3IKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41MDI5MDZdIHJv
Y2tjaGlwLXBjaWUKZjgwMDAwMDAucGNpZTogZjgwMDAwMDAucGNpZSBzdXBwbHkgdnBjaWUwdjkg
bm90IGZvdW5kLCB1c2luZyBkdW1teQpyZWd1bGF0b3IKQXBywqAgNCAxOTo1MDozOCByb2NrcHJv
NjQga2VybmVsOiBbwqDCoCA3NC41NzIwNTBdIHJvY2tjaGlwLXBjaWUKZjgwMDAwMDAucGNpZTog
aG9zdCBicmlkZ2UgL3BjaWVAZjgwMDAwMDAgcmFuZ2VzOgpBcHLCoCA0IDE5OjUwOjM4IHJvY2tw
cm82NCBrZXJuZWw6IFvCoMKgIDc0LjU3MzAxOF0gcm9ja2NoaXAtcGNpZQpmODAwMDAwMC5wY2ll
OiBQYXJzaW5nIHJhbmdlcyBwcm9wZXJ0eS4uLgpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBr
ZXJuZWw6IFvCoMKgIDc0LjU3MzA0MF0gcm9ja2NoaXAtcGNpZQpmODAwMDAwMC5wY2llOsKgwqDC
oMKgwqAgTUVNIDB4MDBmYTAwMDAwMC4uMHgwMGZiZGZmZmZmIC0+IDB4MDBmYTAwMDAwMApBcHLC
oCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjU3NDA4MF0gcm9ja2NoaXAt
cGNpZQpmODAwMDAwMC5wY2llOsKgwqDCoMKgwqDCoCBJTyAweDAwZmJlMDAwMDAuLjB4MDBmYmVm
ZmZmZiAtPiAweDAwZmJlMDAwMDAKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBb
wqDCoCA3NC41NzU0MjBdIHJvY2tjaGlwLXBjaWUKZjgwMDAwMDAucGNpZTogUENJIGhvc3QgYnJp
ZGdlIHRvIGJ1cyAwMDAwOjAwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8Kg
wqAgNzQuNTc2MjQ3XSBwY2lfYnVzIDAwMDA6MDA6IHJvb3QKYnVzIHJlc291cmNlIFtidXMgMDAt
MWZdCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTc2OTMwXSBw
Y2lfYnVzIDAwMDA6MDA6IHJvb3QKYnVzIHJlc291cmNlIFttZW0gMHhmYTAwMDAwMC0weGZiZGZm
ZmZmXQpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjU3NzczOV0g
cGNpX2J1cyAwMDAwOjAwOiByb290CmJ1cyByZXNvdXJjZSBbaW/CoCAweDAwMDAtMHhmZmZmZl0g
KGJ1cyBhZGRyZXNzIFsweGZiZTAwMDAwLTB4ZmJlZmZmZmZdKQpBcHLCoCA0IDE5OjUwOjM4IHJv
Y2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjU3ODg3Nl0gcGNpX2J1cyAwMDAwOjAwOgpzY2Fubmlu
ZyBidXMKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41Nzg5MThd
IHBjaSAwMDAwOjAwOjAwLjA6ClsxZDg3OjAxMDBdIHR5cGUgMDEgY2xhc3MgMHgwNjA0MDAKQXBy
wqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41Nzk3MzRdIHBjaSAwMDAw
OjAwOjAwLjA6CnN1cHBvcnRzIEQxCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDog
W8KgwqAgNzQuNTgwMjUyXSBwY2kgMDAwMDowMDowMC4wOiBQTUUjCnN1cHBvcnRlZCBmcm9tIEQw
IEQxIEQzaG90CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTgw
OTUyXSBwY2kgMDAwMDowMDowMC4wOiBQTUUjCmRpc2FibGVkCkFwcsKgIDQgMTk6NTA6Mzggcm9j
a3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTg1NDc1XSBwY2lfYnVzIDAwMDA6MDA6IGZpeHVwcwpm
b3IgYnVzCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTg1NDkx
XSBwY2kgMDAwMDowMDowMC4wOgpzY2FubmluZyBbYnVzIDAwLTAwXSBiZWhpbmQgYnJpZGdlLCBw
YXNzIDAKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41ODU0OTdd
IHBjaSAwMDAwOjAwOjAwLjA6CmJyaWRnZSBjb25maWd1cmF0aW9uIGludmFsaWQgKFtidXMgMDAt
MDBdKSwgcmVjb25maWd1cmluZwpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvC
oMKgIDc0LjU4NjU2Ml0gcGNpIDAwMDA6MDA6MDAuMDoKc2Nhbm5pbmcgW2J1cyAwMC0wMF0gYmVo
aW5kIGJyaWRnZSwgcGFzcyAxCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8Kg
wqAgNzQuNTg2NzI1XSBwY2lfYnVzIDAwMDA6MDE6CnNjYW5uaW5nIGJ1cwpBcHLCoCA0IDE5OjUw
OjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjU4Njc5Ml0gcGNpIDAwMDA6MDE6MDAuMDoK
WzFiMjE6MTE4Ml0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMApBcHLCoCA0IDE5OjUwOjM4IHJvY2tw
cm82NCBrZXJuZWw6IFvCoMKgIDc0LjU4Nzc4NV0gcGNpIDAwMDA6MDE6MDAuMDogTWF4ClBheWxv
YWQgU2l6ZSBzZXQgdG8gMjU2ICh3YXMgMTI4LCBtYXggMjU2KQpBcHLCoCA0IDE5OjUwOjM4IHJv
Y2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjU4ODYyNV0gcGNpIDAwMDA6MDE6MDAuMDoKZW5hYmxp
bmcgRXh0ZW5kZWQgVGFncwpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKg
IDc0LjU4OTQ4N10gcGNpIDAwMDA6MDE6MDAuMDogUE1FIwpzdXBwb3J0ZWQgZnJvbSBEMCBEM2hv
dCBEM2NvbGQKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41OTAx
OTldIHBjaSAwMDAwOjAxOjAwLjA6IFBNRSMKZGlzYWJsZWQKQXBywqAgNCAxOTo1MDozOCByb2Nr
cHJvNjQga2VybmVsOiBbwqDCoCA3NC41OTAzNDRdIHBjaSAwMDAwOjAxOjAwLjA6IDIuMDAwCkdi
L3MgYXZhaWxhYmxlIFBDSWUgYmFuZHdpZHRoLCBsaW1pdGVkIGJ5IDIuNSBHVC9zIHgxIGxpbmsg
YXQKMDAwMDowMDowMC4wIChjYXBhYmxlIG9mIDQuMDAwIEdiL3Mgd2l0aCA1IEdUL3MgeDEgbGlu
aykKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41OTgyMDZdIHBj
aV9idXMgMDAwMDowMTogZml4dXBzCmZvciBidXMKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQg
a2VybmVsOiBbwqDCoCA3NC41OTgyMjZdIHBjaSAwMDAwOjAxOjAwLjA6CnNjYW5uaW5nIFtidXMg
MDAtMDBdIGJlaGluZCBicmlkZ2UsIHBhc3MgMApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBr
ZXJuZWw6IFvCoMKgIDc0LjU5ODIzMV0gcGNpIDAwMDA6MDE6MDAuMDoKYnJpZGdlIGNvbmZpZ3Vy
YXRpb24gaW52YWxpZCAoW2J1cyAwMC0wMF0pLCByZWNvbmZpZ3VyaW5nCkFwcsKgIDQgMTk6NTA6
Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTk5MTYzXSBwY2kgMDAwMDowMTowMC4wOgpz
Y2FubmluZyBbYnVzIDAwLTAwXSBiZWhpbmQgYnJpZGdlLCBwYXNzIDEKQXBywqAgNCAxOTo1MDoz
OCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC41OTk0NDNdIHBjaV9idXMgMDAwMDowMjoKc2Nh
bm5pbmcgYnVzCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNTk5
NDYwXSBJbnRlcm5hbCBlcnJvcjoKc3luY2hyb25vdXMgZXh0ZXJuYWwgYWJvcnQ6IDk2MDAwMjEw
IFsjMV0gUFJFRU1QVCBTTVAKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDC
oCA3NC42MDAyNzFdIE1vZHVsZXMgbGlua2VkIGluOgpwY2llX3JvY2tjaGlwX2hvc3QoKykgYnJj
bWZtYWMgYnJjbXV0aWwKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3
NC42MDA5NzhdIENQVTogMyBQSUQ6IDU2NSBDb21tOgptb2Rwcm9iZSBOb3QgdGFpbnRlZCA1LjYu
MCAjMQpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjYwMTYwN10g
SGFyZHdhcmUgbmFtZTogUGluZTY0ClJvY2tQcm82NCB2Mi4xIChEVCkKQXBywqAgNCAxOTo1MDoz
OCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC42MDIxNDddIHBzdGF0ZTogNjAwMDAwODUgKG5a
Q3YKZGFJZiAtUEFOIC1VQU8pCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8Kg
wqAgNzQuNjAyNjY2XSBwYyA6CnJvY2tjaGlwX3BjaWVfcmRfY29uZisweDEyMC8weDIyOCBbcGNp
ZV9yb2NrY2hpcF9ob3N0XQpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKg
IDc0LjYwMzM3M10gbHIgOgpyb2NrY2hpcF9wY2llX3JkX2NvbmYrMHg5NC8weDIyOCBbcGNpZV9y
b2NrY2hpcF9ob3N0XQpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0
LjYwNDA2NF0gc3AgOiBmZmZmZmZjMDExMDAzNTAwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0
IGtlcm5lbDogW8KgwqAgNzQuNjA0NDE5XSB4Mjk6IGZmZmZmZmMwMTEwMDM1MDAKeDI4OiAwMDAw
MDAwMDAwMDAwMDAwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQu
NjA0OTg2XSB4Mjc6IDAwMDAwMDAwMDAwMDAwMDEKeDI2OiAwMDAwMDAwMDAwMDAwMDAwCkFwcsKg
IDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjA1NTUyXSB4MjU6IDAwMDAw
MDAwMDAwMDAwMDAKeDI0OiBmZmZmZmZjMDExMDAzNjQ0CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3By
bzY0IGtlcm5lbDogW8KgwqAgNzQuNjA2MTE3XSB4MjM6IGZmZmZmZjgwZjE3OTIwMDAKeDIyOiBm
ZmZmZmZjMDExMDAzNTg0CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAg
NzQuNjA2NjgzXSB4MjE6IGZmZmZmZjgwZTk4MzEzYzAKeDIwOiAwMDAwMDAwMDAwMDAwMDA0CkFw
csKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjA3MjQ5XSB4MTk6IGZm
ZmZmZmMwMTIyMDAwMDAKeDE4OiAwMDAwMDAwMGZmZmZmZmYwCkFwcsKgIDQgMTk6NTA6Mzggcm9j
a3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjA3ODE1XSB4MTc6IDAwMDAwMDAwMDAwMDAwMDAKeDE2
OiAwMDAwMDAwMDAwMDAwMDAwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8Kg
wqAgNzQuNjA4MzgxXSB4MTU6IGZmZmZmZmMwMTBiNzdjMDAKeDE0OiBmZmZmZmZjMDEwYmUyZTI4
CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjA4OTQ3XSB4MTM6
IDAwMDAwMDAwMDAwMDAwMDAKeDEyOiBmZmZmZmZjMDEwYmUyMDAwCkFwcsKgIDQgMTk6NTA6Mzgg
cm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjA5NTEyXSB4MTE6IGZmZmZmZmMwMTBiNzcwMDAK
eDEwOiBmZmZmZmZjMDEwYmUyNDcwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDog
W8KgwqAgNzQuNjEwMDc5XSB4OSA6IDAwMDAwMDAwMTE4MjFiMjEKeDggOiAwMDAwMDAwMDAwMDAw
MDAxCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjE1NDU1XSB4
NyA6IDAwMDAwMDAwMDAwMDAwMDAKeDYgOiAwMDAwMDAwMDAwMDAwMDAwCkFwcsKgIDQgMTk6NTA6
Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjIxNDg3XSB4NSA6IDAwMDAwMDAwMDAyMDAw
MDAKeDQgOiAwMDAwMDAwMDAwMDAwMDAwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5l
bDogW8KgwqAgNzQuNjI3NTE5XSB4MyA6IDAwMDAwMDAwMDBjMDAwMDgKeDIgOiAwMDAwMDAwMDAw
ODAwMDBiCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjMzNTUx
XSB4MSA6IGZmZmZmZmMwMTVjMDAwMDgKeDAgOiBmZmZmZmZjMDEyMDAwMDAwCkFwcsKgIDQgMTk6
NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjM5NTgzXSBDYWxsIHRyYWNlOgpBcHLC
oCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjY0NTc4NV3CoApyb2NrY2hp
cF9wY2llX3JkX2NvbmYrMHgxMjAvMHgyMjggW3BjaWVfcm9ja2NoaXBfaG9zdF0KQXBywqAgNCAx
OTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC42NTYzNTRdwqAKcGNpX2J1c19yZWFk
X2NvbmZpZ19kd29yZCsweDgwLzB4ZDAKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVs
OiBbwqDCoCA3NC42NjUwODNdwqAKcGNpX2J1c19nZW5lcmljX3JlYWRfZGV2X3ZlbmRvcl9pZCsw
eDMwLzB4MWE4CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNjc0
NzIyXcKgCnBjaV9idXNfcmVhZF9kZXZfdmVuZG9yX2lkKzB4NDgvMHg2OApBcHLCoCA0IDE5OjUw
OjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjY4MzM4Ml3CoApwY2lfc2Nhbl9zaW5nbGVf
ZGV2aWNlKzB4N2MvMHhkOApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKg
IDc0LjY5MTY5MF3CoCBwY2lfc2Nhbl9zbG90KzB4MzQvMHgxMTgKQXBywqAgNCAxOTo1MDozOCBy
b2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC42OTkxNTVdwqAKcGNpX3NjYW5fY2hpbGRfYnVzX2V4
dGVuZCsweDYwLzB4MmNjCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAg
NzQuNzA3Nzc0XcKgCnBjaV9zY2FuX2JyaWRnZV9leHRlbmQrMHgzNDAvMHg1NzgKQXBywqAgNCAx
OTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC43MTYyMjRdwqAKcGNpX3NjYW5fY2hp
bGRfYnVzX2V4dGVuZCsweDIwYy8weDJjYwpBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJu
ZWw6IFvCoMKgIDc0LjcyNDk0M13CoApwY2lfc2Nhbl9icmlkZ2VfZXh0ZW5kKzB4MzQwLzB4NTc4
CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNzMzMzIwXcKgCnBj
aV9zY2FuX2NoaWxkX2J1c19leHRlbmQrMHgyMGMvMHgyY2MKQXBywqAgNCAxOTo1MDozOCByb2Nr
cHJvNjQga2VybmVsOiBbwqDCoCA3NC43NDE5OThdwqAKcGNpX3NjYW5fY2hpbGRfYnVzKzB4MTAv
MHgxOApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljc0OTczOV3C
oApwY2lfc2Nhbl9yb290X2J1c19icmlkZ2UrMHg3OC8weGQwCkFwcsKgIDQgMTk6NTA6Mzggcm9j
a3BybzY0IGtlcm5lbDogW8KgwqAgNzQuNzU3OTg4XcKgCnJvY2tjaGlwX3BjaWVfcHJvYmUrMHg4
MzAvMHhiOTAgW3BjaWVfcm9ja2NoaXBfaG9zdF0KQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQg
a2VybmVsOiBbwqDCoCA3NC43NjgwNDJdwqAKcGxhdGZvcm1fZHJ2X3Byb2JlKzB4NTAvMHhhMApB
cHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljc3NTc1OF3CoCByZWFs
bHlfcHJvYmUrMHhkOC8weDMwMApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvC
oMKgIDc0Ljc4MjkzOV3CoApkcml2ZXJfcHJvYmVfZGV2aWNlKzB4NTQvMHhlOApBcHLCoCA0IDE5
OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljc5MDY2MV3CoApkZXZpY2VfZHJpdmVy
X2F0dGFjaCsweDZjLzB4NzgKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDC
oCA3NC43OTg0NjFdwqAgX19kcml2ZXJfYXR0YWNoKzB4NTQvMHhkMApBcHLCoCA0IDE5OjUwOjM4
IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjgwNTc0NF3CoCBidXNfZm9yX2VhY2hfZGV2KzB4
NzAvMHhjMApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjgxMzEx
OV3CoCBkcml2ZXJfYXR0YWNoKzB4MjAvMHgyOApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBr
ZXJuZWw6IFvCoMKgIDc0LjgyMDEwMV3CoCBidXNfYWRkX2RyaXZlcisweDE3OC8weDFkOApBcHLC
oCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjgyNzI0OV3CoCBkcml2ZXJf
cmVnaXN0ZXIrMHg2MC8weDExMApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvC
oMKgIDc0LjgzNDMwOF3CoApfX3BsYXRmb3JtX2RyaXZlcl9yZWdpc3RlcisweDQ0LzB4NTAKQXBy
wqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC44NDIyOTldwqAKcm9ja2No
aXBfcGNpZV9kcml2ZXJfaW5pdCsweDIwLzB4MTAwMCBbcGNpZV9yb2NrY2hpcF9ob3N0XQpBcHLC
oCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljg1MjQ0M13CoCBkb19vbmVf
aW5pdGNhbGwrMHg3NC8weDFhOApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvC
oMKgIDc0Ljg1OTQzMF3CoCBkb19pbml0X21vZHVsZSsweDUwLzB4MWYwCkFwcsKgIDQgMTk6NTA6
Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuODY2Mjc2XcKgIGxvYWRfbW9kdWxlKzB4MWMw
Yy8weDIxNTgKQXBywqAgNCAxOTo1MDozOCByb2NrcHJvNjQga2VybmVsOiBbwqDCoCA3NC44NzMx
MDBdwqAKX19kb19zeXNfZmluaXRfbW9kdWxlKzB4ZDAvMHhlOApBcHLCoCA0IDE5OjUwOjM4IHJv
Y2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljg4MDQ4MF3CoApfX2FybTY0X3N5c19maW5pdF9tb2R1
bGUrMHgxYy8weDI4CkFwcsKgIDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQu
ODg4MTU3XcKgCmVsMF9zdmNfY29tbW9uLmNvbnN0cHJvcC4xKzB4N2MvMHhlOApBcHLCoCA0IDE5
OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0Ljg5NjAwMF3CoCBkb19lbDBfc3ZjKzB4
MTgvMHgyMApBcHLCoCA0IDE5OjUwOjM4IHJvY2twcm82NCBrZXJuZWw6IFvCoMKgIDc0LjkwMjI4
NV3CoAplbDBfc3luY19oYW5kbGVyKzB4MTJjLzB4MWIwCkFwcsKgIDQgMTk6NTA6Mzggcm9ja3By
bzY0IGtlcm5lbDogW8KgwqAgNzQuOTA5MzgwXcKgIGVsMF9zeW5jKzB4MTE0LzB4MTQwCkFwcsKg
IDQgMTk6NTA6Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuOTE1NjkyXSBDb2RlOiBhOGMz
N2JmZCBkNjVmMDNjMApmOTQwMDJhMCA4YjEzMDAxMyAoYjk0MDAyNzMpCkFwcsKgIDQgMTk6NTA6
Mzggcm9ja3BybzY0IGtlcm5lbDogW8KgwqAgNzQuOTI1MjEwXSAtLS1bIGVuZCB0cmFjZQoxODFk
Nzk5M2Y5MmYzZjNkIF0tLS0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
