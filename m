Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0F28CFEE
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 11:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siO3g5bocatRavlB3AZpBNxY9vohCt8eS4oB6pKjcTs=; b=ZJANaT8katsT39
	yJ8CmuhTCRGpsSKXm8+L3mgCUdiFGMkSAdzc7uxoumo1URDIw1WK04UnWzJd3QVN4CKgEnTAWfHp3
	ay1PaI1cVeFxV8oh3j2MdQE7y6bWIZLWQf/kiEO8bViq38512X0XuFFOV6dYCvdge8JJA3Q4JM1IB
	jgATSJXKJ8UPedTk3Rd/bBU+OfCPwOsDXfUNQJx8f7aYIGQeKRwVzSmKxqmpmuBcoqxY3F67Q0BH1
	YfvW+SEVJNQI5LvZZdH+bZJeVaEEHQuu7IZsV7Xrd6vJfDoPsjSqD7qS1zaJKag6VW/d+QXRXnWOy
	H1mH2LCFm+bRud7aT6bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxppq-0003Dg-Bd; Wed, 14 Aug 2019 09:44:50 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxppn-0003DI-9e
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 09:44:49 +0000
Received: by mail-ot1-x343.google.com with SMTP id m24so27885959otp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Aug 2019 02:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RStDidIxdpOoqZbITLOJoNfWcC6AJRVrNWBCURQFpYc=;
 b=gWB8InX2SWnhGgY+E3ukG2AM6hQfvc9P+SLA2IJfEzyHVqDNJrvfj62WnA9sSXZLVr
 jo5Krtk3bxHlFP/ohGX3ISqTcwSA95TU/9ZbQsR72VSSfYaQdcCrtcEVSzfTjR5PFpN/
 w7QC0DC3b4u3gHEp6rlsLUP2Fa4cwbgtGp96g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RStDidIxdpOoqZbITLOJoNfWcC6AJRVrNWBCURQFpYc=;
 b=bJxNBLaIo0WRu0QQ254FdLJx55Cocw3MO+3VXsZAGJwnOxeGxrIMA+YRk22AdGfniZ
 GJs4vyfTsfhG92/rFb3Q1izsSCBaWZhi4ZDSrAyluE+024YIaYAZ/EReUmB2VNGXx0vn
 nv0yiPMFClU9rd5N8iVlXBUQpoCNFTaTv9qmsSZdZVK3zI6euhTolkAz8eARWchg4EWR
 kP+K21iaERg2uZMxpyZkWYH73BEHuQ4Q0WXGxFmC9liWHID7QRussHOxz+j+/bgFQeod
 j+k6S6IadYguctWm5GcdxtHPS1hZn9QKY7GbrXqIwHdMEjuDXSyseVqLJ2TXgGdYMRYB
 U79Q==
X-Gm-Message-State: APjAAAWPa2P8P6oOzENiDRLH18fM3bR3ogmFtFcdPK2VGzMtc3iwAPuj
 4lNXjWLk9ebgT+dMd3VuHICU6C/6C/pOqGMdx3CSEg==
X-Google-Smtp-Source: APXvYqy8u6K+YRA9rkInUM1ZgPOzAwh24JAf+amShO/Pim4HT2bLraiTjDlnKmZrpJ5nA8B8Xx2VkRVcXiXIB0e9F/A=
X-Received: by 2002:a5d:83cd:: with SMTP id u13mr42933326ior.297.1565775886311; 
 Wed, 14 Aug 2019 02:44:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-10-jagan@amarulasolutions.com>
 <e7507f4e-de8d-e61c-5538-0a3cc203ceba@rock-chips.com>
In-Reply-To: <e7507f4e-de8d-e61c-5538-0a3cc203ceba@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 14 Aug 2019 15:14:34 +0530
Message-ID: <CAMty3ZCvOCRPmjKh5R-ZxajRJVjC5ZDVO5GCw-HQx37bGrLPxg@mail.gmail.com>
Subject: Re: [PATCH 09/15] wdt: dw: Rename to dw_wdt.c
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024447_338519_E27200F5 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Chin-Liang See <clsee@altera.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjEwIFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NywgSmFnYW4g
VGVraSB3cm90ZToKPiA+IC0gdXNlIGR3IGluc3RlYWQgb2YgZGVzaWdud2FyZSBmb3IgZHJpdmVy
IGZpbGUgc2luY2UKPiA+ICAgIExpbnV4IGZvbGxvd2luZyB0aGUgc2FtZS4KPiA+IC0gYWRkIENP
TkZJRyBtYWNybyBzdGFydCB3aXRoIENPTkZJR19XRFQgc2luY2UgdGhlCj4gPiAgICBkcml2ZXIg
bW9kZSB3ZHQgZHJpdmVycyBmb2xsb3cgdGhpcy4KPiA+Cj4gPiBDYzogRGluaCBOZ3V5ZW4gPGRp
bmd1eWVuQGtlcm5lbC5vcmc+Cj4gPiBDYzogQ2hpbi1MaWFuZyBTZWUgPGNsc2VlQGFsdGVyYS5j
b20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25z
LmNvbT4KPiA+IC0tLQo+ID4gICBjb21tb24vYm9hcmRfZi5jICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDIgKy0KPiA+ICAgZHJpdmVycy93YXRjaGRvZy9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICAgfCAyICstCj4gPiAgIGRyaXZlcnMvd2F0Y2hkb2cve2Rlc2lnbndhcmVf
d2R0LmMgPT4gZHdfd2R0LmN9IHwgMAo+ID4gICBpbmNsdWRlL2NvbmZpZ3Mvc29jZnBnYV9jb21t
b24uaCAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ICAgaW5jbHVkZS9jb25maWdzL3NvY2ZwZ2Ff
c3RyYXRpeDEwX3NvY2RrLmggICAgICAgfCAyICstCj4gPiAgIHNjcmlwdHMvY29uZmlnX3doaXRl
bGlzdC50eHQgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ID4gICA2IGZpbGVzIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+ICAgcmVuYW1lIGRyaXZlcnMvd2F0
Y2hkb2cve2Rlc2lnbndhcmVfd2R0LmMgPT4gZHdfd2R0LmN9ICgxMDAlKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9jb21tb24vYm9hcmRfZi5jIGIvY29tbW9uL2JvYXJkX2YuYwo+ID4gaW5kZXggNDc2
MGQ3MjhmMy4uNzllZmVmMDc5MiAxMDA2NDQKPiA+IC0tLSBhL2NvbW1vbi9ib2FyZF9mLmMKPiA+
ICsrKyBiL2NvbW1vbi9ib2FyZF9mLmMKPiA+IEBAIC05NSw3ICs5NSw3IEBAIHN0YXRpYyBpbnQg
aW5pdF9mdW5jX3dhdGNoZG9nX2luaXQodm9pZCkKPiA+ICAgIyBpZiBkZWZpbmVkKENPTkZJR19I
V19XQVRDSERPRykgJiYgXAo+ID4gICAgICAgKGRlZmluZWQoQ09ORklHX002OEspIHx8IGRlZmlu
ZWQoQ09ORklHX01JQ1JPQkxBWkUpIHx8IFwKPiA+ICAgICAgIGRlZmluZWQoQ09ORklHX1NIKSB8
fCBcCj4gPiAtICAgICBkZWZpbmVkKENPTkZJR19ERVNJR05XQVJFX1dBVENIRE9HKSB8fCBcCj4g
PiArICAgICBkZWZpbmVkKENPTkZJR19XRFRfRFcpIHx8IFwKPiA+ICAgICAgIGRlZmluZWQoQ09O
RklHX0lNWF9XQVRDSERPRykpCj4gPiAgICAgICBod193YXRjaGRvZ19pbml0KCk7Cj4gPiAgICAg
ICBwdXRzKCIgICAgICAgV2F0Y2hkb2cgZW5hYmxlZFxuIik7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy93YXRjaGRvZy9NYWtlZmlsZSBiL2RyaXZlcnMvd2F0Y2hkb2cvTWFrZWZpbGUKPiA+IGlu
ZGV4IDY4Yzk4OWFhMGIuLmExNGZkYWJmOGQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3dhdGNo
ZG9nL01ha2VmaWxlCj4gPiArKysgYi9kcml2ZXJzL3dhdGNoZG9nL01ha2VmaWxlCj4gPiBAQCAt
MTMsNyArMTMsNiBAQCBlbmRpZgo+ID4gICBvYmotJChDT05GSUdfUzVQKSAgICAgICAgICAgICAg
ICs9IHM1cF93ZHQubwo+ID4gICBvYmotJChDT05GSUdfWElMSU5YX1RCX1dBVENIRE9HKSArPSB4
aWxpbnhfdGJfd2R0Lm8KPiA+ICAgb2JqLSQoQ09ORklHX09NQVBfV0FUQ0hET0cpICs9IG9tYXBf
d2R0Lm8KPiA+IC1vYmotJChDT05GSUdfREVTSUdOV0FSRV9XQVRDSERPRykgKz0gZGVzaWdud2Fy
ZV93ZHQubwo+ID4gICBvYmotJChDT05GSUdfVUxQX1dBVENIRE9HKSArPSB1bHBfd2RvZy5vCj4g
PiAgIG9iai0kKENPTkZJR19XRFQpICs9IHdkdC11Y2xhc3Mubwo+ID4gICBvYmotJChDT05GSUdf
V0RUX1NBTkRCT1gpICs9IHNhbmRib3hfd2R0Lm8KPiA+IEBAIC0yMyw2ICsyMiw3IEBAIG9iai0k
KENPTkZJR19XRFRfQkNNNjM0NSkgKz0gYmNtNjM0NV93ZHQubwo+ID4gICBvYmotJChDT05GSUdf
QkNNMjgzNV9XRFQpICAgICAgICs9IGJjbTI4MzVfd2R0Lm8KPiA+ICAgb2JqLSQoQ09ORklHX1dE
VF9PUklPTikgKz0gb3Jpb25fd2R0Lm8KPiA+ICAgb2JqLSQoQ09ORklHX1dEVF9DRE5TKSArPSBj
ZG5zX3dkdC5vCj4gPiArb2JqLSQoQ09ORklHX1dEVF9EVykgKz0gZHdfd2R0Lm8KPiA+ICAgb2Jq
LSQoQ09ORklHX1dEVF9NUEM4eHgpICs9IG1wYzh4eF93ZHQubwo+ID4gICBvYmotJChDT05GSUdf
V0RUX01UNzYyMSkgKz0gbXQ3NjIxX3dkdC5vCj4gPiAgIG9iai0kKENPTkZJR19XRFRfTVRLKSAr
PSBtdGtfd2R0Lm8KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3dhdGNoZG9nL2Rlc2lnbndhcmVf
d2R0LmMgYi9kcml2ZXJzL3dhdGNoZG9nL2R3X3dkdC5jCj4gPiBzaW1pbGFyaXR5IGluZGV4IDEw
MCUKPiA+IHJlbmFtZSBmcm9tIGRyaXZlcnMvd2F0Y2hkb2cvZGVzaWdud2FyZV93ZHQuYwo+ID4g
cmVuYW1lIHRvIGRyaXZlcnMvd2F0Y2hkb2cvZHdfd2R0LmMKPiA+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2NvbmZpZ3Mvc29jZnBnYV9jb21tb24uaCBiL2luY2x1ZGUvY29uZmlncy9zb2NmcGdhX2Nv
bW1vbi5oCj4gPiBpbmRleCBkMTAzNGFjMjgwLi42NWYwMmVjYTJlIDEwMDY0NAo+ID4gLS0tIGEv
aW5jbHVkZS9jb25maWdzL3NvY2ZwZ2FfY29tbW9uLmgKPiA+ICsrKyBiL2luY2x1ZGUvY29uZmln
cy9zb2NmcGdhX2NvbW1vbi5oCj4gPiBAQCAtMTA1LDcgKzEwNSw3IEBACj4gPiAgICAqIEw0IFdh
dGNoZG9nCj4gPiAgICAqLwo+ID4gICAjaWZkZWYgQ09ORklHX0hXX1dBVENIRE9HCj4gPiAtI2Rl
ZmluZSBDT05GSUdfREVTSUdOV0FSRV9XQVRDSERPRwo+ID4gKyNkZWZpbmUgQ09ORklHX1dEVF9E
Vwo+ID4gICAjZGVmaW5lIENPTkZJR19EV19XRFRfQkFTRSAgICAgICAgICBTT0NGUEdBX0w0V0Qw
X0FERFJFU1MKPiA+ICAgI2RlZmluZSBDT05GSUdfRFdfV0RUX0NMT0NLX0tIWiAgICAgICAgICAg
ICAyNTAwMAo+ID4gICAjZGVmaW5lIENPTkZJR19XQVRDSERPR19USU1FT1VUX01TRUNTICAgICAg
IDMwMDAwCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3NvY2ZwZ2Ffc3RyYXRpeDEw
X3NvY2RrLmggYi9pbmNsdWRlL2NvbmZpZ3Mvc29jZnBnYV9zdHJhdGl4MTBfc29jZGsuaAo+ID4g
aW5kZXggOGQyOTcxYzZlMi4uMzU4MmFlYzgyMiAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvY29u
Zmlncy9zb2NmcGdhX3N0cmF0aXgxMF9zb2Nkay5oCj4gPiArKysgYi9pbmNsdWRlL2NvbmZpZ3Mv
c29jZnBnYV9zdHJhdGl4MTBfc29jZGsuaAo+ID4gQEAgLTE2MSw3ICsxNjEsNyBAQCB1bnNpZ25l
ZCBpbnQgY21fZ2V0X3FzcGlfY29udHJvbGxlcl9jbGtfaHoodm9pZCk7Cj4gPiAgICAqLwo+ID4g
ICAjaWZkZWYgQ09ORklHX1NQTF9CVUlMRAo+ID4gICAjZGVmaW5lIENPTkZJR19IV19XQVRDSERP
Rwo+ID4gLSNkZWZpbmUgQ09ORklHX0RFU0lHTldBUkVfV0FUQ0hET0cKPiA+ICsjZGVmaW5lIENP
TkZJR19XRFRfRFcKPiA+ICAgI2RlZmluZSBDT05GSUdfRFdfV0RUX0JBU0UgICAgICAgICAgU09D
RlBHQV9MNFdEMF9BRERSRVNTCj4gPiAgICNpZm5kZWYgX19BU1NFTUJMWV9fCj4gPiAgIHVuc2ln
bmVkIGludCBjbV9nZXRfbDRfc3lzX2ZyZWVfY2xrX2h6KHZvaWQpOwo+ID4gZGlmZiAtLWdpdCBh
L3NjcmlwdHMvY29uZmlnX3doaXRlbGlzdC50eHQgYi9zY3JpcHRzL2NvbmZpZ193aGl0ZWxpc3Qu
dHh0Cj4gPiBpbmRleCBlNjE2ZjcyMjliLi5mMjQ1MzcyOGM2IDEwMDY0NAo+ID4gLS0tIGEvc2Ny
aXB0cy9jb25maWdfd2hpdGVsaXN0LnR4dAo+ID4gKysrIGIvc2NyaXB0cy9jb25maWdfd2hpdGVs
aXN0LnR4dAo+ID4gQEAgLTMyMyw3ICszMjMsNyBAQCBDT05GSUdfREVGQVVMVF9JTU1SCj4gPiAg
IENPTkZJR19ERUZfSFdDT05GSUcKPiA+ICAgQ09ORklHX0RFTEFZX0VOVklST05NRU5UCj4gPiAg
IENPTkZJR19ERVNJR05XQVJFX0VUSAo+ID4gLUNPTkZJR19ERVNJR05XQVJFX1dBVENIRE9HCj4g
PiArQ09ORklHX1dEVF9EVwo+Cj4gSXMgaXQgYmV0dGVyIHRvIGRlZmluZSBhIFdEVF9EVyBpbiBk
cml2ZXJzL3dhdGNoZG9nL0tjb25maWcgc28gdGhhdCB3ZQo+IGRvbid0IG5lZWQKPgo+IHRoaXMg
d2hpdGUgbGlzdD8KCjExLzE1IHBhdGggZG9pbmcgdGhlIHNhbWUsIHRoaXMgbWFrZSBzdXJlIG5v
dCB0byBicmVhayB0aGUgY29uZmlncwp3aGljaCBkb2Vzbid0IGVuYWJsZSBETV9XRFQuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
