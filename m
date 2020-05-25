Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE251E04DC
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 04:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=evLhskaJNKCyRoHZjFFTFsvNtWWSIbfkY2Dz977hoUE=; b=Na1KL6nZY2I4m5f3EsSqhRAvX
	3FLeeFNdilbpzH4IcvyJcZzazasOC7GAlCKMZAlMSdCLMq5zW8o7cuPDpFyBBgSCV9iBj3oJHgP2X
	fKyrTnBLFh+Pp7fxMo884flz5gLXBSswUn8PB8vOU2GISk/qmSuks3yHqYG7K88iXbCMswrDLhZEw
	6wMnQsx4ZBvniP5lAA1MF/JgvSX9ED6fcRsNZmHlzWpU1RYOP5xTwFDG90ewokSM8FL9128FchkPg
	9j2W3b+edPP6l+mjG+Cf2Ty7SW/jMc2h48BDpcNYqng0ixeIf+vnllsZ7x9VyPxZWFeSWLoAalOnE
	CchtLqHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3Bl-0004bf-OT; Mon, 25 May 2020 02:50:05 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3Bh-000476-Pd
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 02:50:03 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 93AAD6FD;
 Mon, 25 May 2020 10:49:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25387T140143207892736S1590374994104677_; 
 Mon, 25 May 2020 10:49:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0f4f5611d30dd1caa110cd82147e0a11>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] rockchip: Fix spl mmc boot device ofpath
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200524145618.78951-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b7748fd2-3963-75d8-081c-fe4457f6e3a7@rock-chips.com>
Date: Mon, 25 May 2020 10:49:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200524145618.78951-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_195002_220759_CCDCE342 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.199 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNCDkuIvljYgxMDo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBMaW51eCB2NS43
LXJjMSBkdHMoaSkgc3luYyBoYXMgY2hhbmdlZCB0aGUgc2RtbWMgbm9kZSBmcm9tCj4gZHdtbWNA
ZmUzMjAwMDAgdG8gbW1jQGZlMzIwMDAwIGFuZCB0aGlzIG9mcGF0aCBpcyBiZWluZwo+IHVzZWQg
aW4gcm9ja2NoaXAgc3BsIGJvb3RkZXZpY2UgY29kZS4KPgo+IFNvLCB1cGRhdGUgdGhlIG9mcGF0
aCB3aXRoIGEgbmV3IG5vZGUgbmFtZSBhbmQgcHJlZml4ICJzYW1lLWFzLXNwbCIKPiB0byBtaXNz
aW5nIHUtYm9vdCxzcGwtYm9vdC1vcmRlci4KPgo+IEJ1ZyBsb2c6Cj4gVS1Cb290IFNQTCAyMDIw
LjA3LXJjMi0wMDI1Ni1nOWM1ZmVmNTc3NCAoTWF5IDI0IDIwMjAgLSAyMDoyMDo0MyArMDUzMCkK
PiBUcnlpbmcgdG8gYm9vdCBmcm9tIE1NQzIKPiBtbWNfbG9hZF9pbWFnZV9yYXdfc2VjdG9yOiBt
bWMgYmxvY2sgcmVhZCBlcnJvcgo+IFRyeWluZyB0byBib290IGZyb20gTU1DMQo+IG1tY19sb2Fk
X2ltYWdlX3Jhd19zZWN0b3I6IG1tYyBibG9jayByZWFkIGVycm9yCj4gU1BMOiBmYWlsZWQgdG8g
Ym9vdCBmcm9tIGFsbCBib290IGRldmljZXMKPgo+IEZpeGVzOiAxNjdlZmMyYzdhNDYgKCJhcm02
NDogZHRzOiByazMzOTk6IFN5bmMgdjUuNy1yYzEgZnJvbSBMaW51eCIKPiBTaWduZWQtb2ZmLWJ5
OiBTdW5pZWwgTWFoZXNoIDxzdW5pbEBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVy
Cj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjI6Cj4gLSBwcmVmaXggInNhbWUtYXMtc3BsIiB0byBtaXNz
aW5nIHUtYm9vdCxzcGwtYm9vdC1vcmRlcgo+Cj4gICBhcmNoL2FybS9kdHMvcmszMzk5LWV2Yi11
LWJvb3QuZHRzaSAgICAgICAgICAgICAgIHwgMiArLQo+ICAgYXJjaC9hcm0vZHRzL3JrMzM5OS1m
aWN1cy11LWJvb3QuZHRzaSAgICAgICAgICAgICB8IDIgKy0KPiAgIGFyY2gvYXJtL2R0cy9yazMz
OTktcm9jazk2MC11LWJvb3QuZHRzaSAgICAgICAgICAgfCAyICstCj4gICBhcmNoL2FybS9tYWNo
LXJvY2tjaGlwL3JrMzM5OS9yazMzOTkuYyAgICAgICAgICAgIHwgNCArKy0tCj4gICBib2FyZC90
aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5OS9wdW1hLXJrMzM5OS5jIHwgNCArKy0tCj4gICA1
IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0
cy9yazMzOTktZXZiLXUtYm9vdC5kdHNpCj4gaW5kZXggZTU2NTlkNzk5OS4uMGJiNTBiMDFkYSAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtL2R0cy9yazMzOTktZXZiLXUtYm9vdC5kdHNpCj4gQEAgLTgsNyArOCw3IEBACj4g
ICAKPiAgIC8gewo+ICAgCWNob3NlbiB7Cj4gLQkJdS1ib290LHNwbC1ib290LW9yZGVyID0gJnNk
aGNpLCAmc2RtbWM7Cj4gKwkJdS1ib290LHNwbC1ib290LW9yZGVyID0gInNhbWUtYXMtc3BsIiwg
JnNkaGNpLCAmc2RtbWM7Cj4gICAJfTsKPiAgIH07Cj4gICAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vZHRzL3JrMzM5OS1maWN1cy11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktZmlj
dXMtdS1ib290LmR0c2kKPiBpbmRleCBmM2Y3YWE3YzQ1Li4zOGUwODk3ZGI5IDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtL2R0cy9yazMzOTktZmljdXMtdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2Fy
bS9kdHMvcmszMzk5LWZpY3VzLXUtYm9vdC5kdHNpCj4gQEAgLTgsNiArOCw2IEBACj4gICAKPiAg
IC8gewo+ICAgCWNob3NlbiB7Cj4gLQkJdS1ib290LHNwbC1ib290LW9yZGVyID0gJnNkaGNpLCAm
c2RtbWM7Cj4gKwkJdS1ib290LHNwbC1ib290LW9yZGVyID0gInNhbWUtYXMtc3BsIiwgJnNkaGNp
LCAmc2RtbWM7Cj4gICAJfTsKPiAgIH07Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMz
OTktcm9jazk2MC11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jazk2MC11LWJv
b3QuZHRzaQo+IGluZGV4IDgyZjJjMzExYWYuLmMxOTAwODllMjYgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm0vZHRzL3JrMzM5OS1yb2NrOTYwLXUtYm9vdC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRz
L3JrMzM5OS1yb2NrOTYwLXUtYm9vdC5kdHNpCj4gQEAgLTgsNyArOCw3IEBACj4gICAKPiAgIC8g
ewo+ICAgCWNob3NlbiB7Cj4gLQkJdS1ib290LHNwbC1ib290LW9yZGVyID0gJnNkaGNpLCAmc2Rt
bWM7Cj4gKwkJdS1ib290LHNwbC1ib290LW9yZGVyID0gInNhbWUtYXMtc3BsIiwgJnNkaGNpLCAm
c2RtbWM7Cj4gICAJfTsKPiAgIAo+ICAgCXZkZF9sb2c6IHZkZC1sb2cgewo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9yazMzOTkuYyBiL2FyY2gvYXJtL21hY2gt
cm9ja2NoaXAvcmszMzk5L3JrMzM5OS5jCj4gaW5kZXggMDliMGQ2ZWJlOC4uNGZkYTkzYjE1MiAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9yazMzOTkuYwo+ICsr
KyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L3JrMzM5OS5jCj4gQEAgLTI4LDcgKzI4
LDcgQEAgREVDTEFSRV9HTE9CQUxfREFUQV9QVFI7Cj4gICBjb25zdCBjaGFyICogY29uc3QgYm9v
dF9kZXZpY2VzW0JST01fTEFTVF9CT09UU09VUkNFICsgMV0gPSB7Cj4gICAJW0JST01fQk9PVFNP
VVJDRV9FTU1DXSA9ICIvc2RoY2lAZmUzMzAwMDAiLAo+ICAgCVtCUk9NX0JPT1RTT1VSQ0VfU1BJ
Tk9SXSA9ICIvc3BpQGZmMWQwMDAwIiwKPiAtCVtCUk9NX0JPT1RTT1VSQ0VfU0RdID0gIi9kd21t
Y0BmZTMyMDAwMCIsCj4gKwlbQlJPTV9CT09UU09VUkNFX1NEXSA9ICIvbW1jQGZlMzIwMDAwIiwK
PiAgIH07Cj4gICAKPiAgIHN0YXRpYyBzdHJ1Y3QgbW1fcmVnaW9uIHJrMzM5OV9tZW1fbWFwW10g
PSB7Cj4gQEAgLTE3Niw3ICsxNzYsNyBAQCBjb25zdCBjaGFyICpzcGxfZGVjb2RlX2Jvb3RfZGV2
aWNlKHUzMiBib290X2RldmljZSkKPiAgIAkJdTMyIGJvb3RfZGV2aWNlOwo+ICAgCQljb25zdCBj
aGFyICpvZnBhdGg7Cj4gICAJfSBzcGxfYm9vdF9kZXZpY2VzX3RibFtdID0gewo+IC0JCXsgQk9P
VF9ERVZJQ0VfTU1DMSwgIi9kd21tY0BmZTMyMDAwMCIgfSwKPiArCQl7IEJPT1RfREVWSUNFX01N
QzEsICIvbW1jQGZlMzIwMDAwIiB9LAo+ICAgCQl7IEJPT1RfREVWSUNFX01NQzIsICIvc2RoY2lA
ZmUzMzAwMDAiIH0sCj4gICAJCXsgQk9PVF9ERVZJQ0VfU1BJLCAiL3NwaUBmZjFkMDAwMCIgfSwK
PiAgIAl9Owo+IGRpZmYgLS1naXQgYS9ib2FyZC90aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5
OS9wdW1hLXJrMzM5OS5jIGIvYm9hcmQvdGhlb2Jyb21hLXN5c3RlbXMvcHVtYV9yazMzOTkvcHVt
YS1yazMzOTkuYwo+IGluZGV4IDU2MTU3OWQwNTYuLmY3ZjA4YWU2MTcgMTAwNjQ0Cj4gLS0tIGEv
Ym9hcmQvdGhlb2Jyb21hLXN5c3RlbXMvcHVtYV9yazMzOTkvcHVtYS1yazMzOTkuYwo+ICsrKyBi
L2JvYXJkL3RoZW9icm9tYS1zeXN0ZW1zL3B1bWFfcmszMzk5L3B1bWEtcmszMzk5LmMKPiBAQCAt
NzcsNyArNzcsNyBAQCBzdGF0aWMgaW50IHNldHVwX2Jvb3R0YXJnZXRzKHZvaWQpCj4gICAJfQo+
ICAgCj4gICAJLyoKPiAtCSAqIE9ubHkgcnVuLCBpZiBib290aW5nIGZyb20gbW1jMSAoaS5lLiAv
ZHdtbWNAZmUzMjAwMDApIGFuZAo+ICsJICogT25seSBydW4sIGlmIGJvb3RpbmcgZnJvbSBtbWMx
IChpLmUuIC9tbWNAZmUzMjAwMDApIGFuZAo+ICAgCSAqIG9ubHkgY29uc2lkZXIgY2FzZXMgd2hl
cmUgdGhlIGRlZmF1bHQgYm9vdC1vcmRlciBmaXJzdAo+ICAgCSAqIHRyaWVzIHRvIGJvb3QgZnJv
bSBtbWMwIChlTU1DKSBhbmQgdGhlbiBmcm9tIG1tYzEKPiAgIAkgKiAoaS5lLiBleHRlcm5hbCBT
RCkuCj4gQEAgLTg1LDcgKzg1LDcgQEAgc3RhdGljIGludCBzZXR1cF9ib290dGFyZ2V0cyh2b2lk
KQo+ICAgCSAqIEluIG90aGVyIHdvcmRzOiB0aGUgU0QgY2FyZCB3aWxsIGJlIG1vdmVkIHRvIGVh
cmxpZXIgaW4gdGhlCj4gICAJICogb3JkZXIsIGlmIFUtQm9vdCB3YXMgYWxzbyBsb2FkZWQgZnJv
bSB0aGUgU0QtY2FyZC4KPiAgIAkgKi8KPiAtCWlmICghc3RyY21wKGJvb3RfZGV2aWNlLCAiL2R3
bW1jQGZlMzIwMDAwIikpIHsKPiArCWlmICghc3RyY21wKGJvb3RfZGV2aWNlLCAiL21tY0BmZTMy
MDAwMCIpKSB7Cj4gICAJCWNoYXIgKm1tYzAsICptbWMxOwo+ICAgCj4gICAJCWRlYnVnKCIlczog
Ym9vdGVkIGZyb20gU0QtQ2FyZFxuIiwgX19mdW5jX18pOwoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
