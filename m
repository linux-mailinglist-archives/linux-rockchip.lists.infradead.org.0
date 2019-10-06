Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1D3CCDBB
	for <lists+linux-rockchip@lfdr.de>; Sun,  6 Oct 2019 03:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMlFLiu7kC/MAJ9+/oNxMTiwWzxVkT7297kj78maioE=; b=mykFefSXXDk5fn
	yG9onca9ZlWQphymVUNTe+wYqFipsEeBnJ57Zb3gQns6bMmGU05KIv6WrmPMPKaFK3V3vsfLaM5sd
	/FCxRLlo2rPwJUR4H/5Arb9c2m9FU1/mutEjKs7vZWMX2fka7qZrnD2bFwrnAbg8Q1XzvbsIwUCXf
	+gtUhEnj4KjzR9sXOQfpk2GTkU1WOQvsIXR2LSOxKDdc982NeoVTclneb4N6x9aadBSaui5nty30i
	5lmccOY7aWxNAFHov2wUl2ZQFaedfL6RuQwiTPAcBW0ei8BVtQ1jtls9P8XLa17s5Oiuo/1RVU72Y
	EJf8oFbLvykICE8Vaw0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvMC-0001WC-W1; Sun, 06 Oct 2019 01:29:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvM9-0001VI-Nf
 for linux-rockchip@lists.infradead.org; Sun, 06 Oct 2019 01:29:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so6222498pfb.7
 for <linux-rockchip@lists.infradead.org>; Sat, 05 Oct 2019 18:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=APaKoLAXAA2hwOs8ygZiifFcNhzD94tOLP66AkYFFM0=;
 b=ge3ul6udagS92vz5Tzk0BAD2v2U1Yi6VyXrcEHb/aVcAhB21q+4PKG0kxCel+mcoYA
 TJr1UIMyfZi0XFlmZnnD5VJv1lknYZAdiU1FaLACHtLHVqfc4Cek+G81+inyD/M2GHaX
 JVTHMUcDMuhIglCWVjiUkwWGHK0S6K/jAlpnhgLEfrUcNMw5bqa5I7fq86ja9eXUzVe0
 OMuQVlZb39mML86h39YQKeRtX9Q2A3OTtvggPV5lE/Tr6Q/2m1FI+LIvK/ztXPQ311oK
 Et+9x72gBtfkCl1DUhlAAM5kQjxG2/dT+zA2Q/cfZm3EXZ9ES9mysK48xlDe1slZKNSF
 tOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=APaKoLAXAA2hwOs8ygZiifFcNhzD94tOLP66AkYFFM0=;
 b=E/p12m5pWFobrWzBtrXjkHVZcnvciDeicyIA2dTekD/21uuV2VQ0AC+sQtbOm8aTe7
 Glwhi5mcw63dOWVDfQgY888wG9AerjmvHubiBm9BLHkjZ2RotWHuDWLbHP3UkDT6u2BN
 ChTOVs2lKzg2w/yOu5Cotd+X6ajPsvLSnr8zFEKe6h6Xx594ogez9jibYImCw55BVHEy
 KLW9cmd14lfNB5+4izdfVoxKAT3HEXxYbWi+cjQP0gMjtMhYdr8f1HxPNeKnWRZeG6uP
 94fGEYRcZUfOmvNK3CVzBHZjPBuGg6nHXsBIwxnNffoCwukGq2BAvcoxMdkZwV53AzKv
 AcoQ==
X-Gm-Message-State: APjAAAVFgqOBcbLkMhH0Yi1eym25nUVuw0YLkBIwJ/+i7XQHwIxkTZk9
 rEXfTOvewiLB03WAoAIDAFbG
X-Google-Smtp-Source: APXvYqz97bHGPp1RBdBXWdNMD3wZW1Q1Qh6FywuU/eUMHRUFmBvBsvPyEM1YLN2QuH3nFvSBpo1zkw==
X-Received: by 2002:a62:1658:: with SMTP id 85mr25837341pfw.195.1570325342592; 
 Sat, 05 Oct 2019 18:29:02 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:710c:18ad:b4fc:3a41:6566:71b4])
 by smtp.gmail.com with ESMTPSA id l1sm9813726pja.30.2019.10.05.18.28.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 05 Oct 2019 18:29:01 -0700 (PDT)
Date: Sun, 6 Oct 2019 06:58:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qu Wenruo <quwenruo.btrfs@gmx.com>, Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [U-Boot] [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
Message-ID: <20191006012850.GA4597@Mani-XPS-13-9360>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_182905_783504_D2316633 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de,
 Simon Glass <sjg@chromium.org>, gajjar04akash@gmail.com,
 Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCBPY3QgMDYsIDIwMTkgYXQgMDk6MDU6NDNBTSArMDgwMCwgUXUgV2VucnVvIHdyb3Rl
Ogo+IAo+IAo+IE9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+ID4g
VGhpcyBpcyBuZXh0IHJldmlzb24gb2YgbHBkZHI0IHN1cHBvcnQgb24gcmszMzk5IGNvbXBhcmVk
IHRvCj4gPiBwcmV2aW91cyBzZXRbMV0uIEl0IGhhcyBzb21lIGNoYW5nZXMgYmFzZWQgb24gdGhl
IGNvbW1pdCBvcmRlcnMKPiA+IGFuZCBzcXVhc2hpbmcgZmV3IHBhdGNoZXMgdG9nZXRoZXIgYW5k
IHJlc3QgaXMgc2FtZS4KPiA+IAo+ID4gVGhhbmtzIHRvCj4gPiAtIFlvdU1pbiBDaGVuCj4gPiAt
IEFrYXNoIEdhamphcgo+ID4gLSBLZXZlciBZYW5nCj4gPiBmb3Igc3VwcG9ydGluZyBhbGwgdGhl
IGhlbHAgb24gdGhpcyB3b3JrLgo+ID4gCj4gPiBDaGFuZ2VzIGZvciB2MzoKPiA+IC0gc3F1YXNo
IHNldF9yYXRlIGNvZGUgaW4gb25lIHBhdGNoCj4gPiAtIHRlc3RlZCBpbiBSb2NrcHJvNjQgYW5k
IFJvY2stUEktNAo+IAo+IEdyZWF0IHdvcmtzISBDYW4ndCB3YWl0IHRvIHRyeSB0aGVtIG9uIGJv
dGggYm9hcmRzIQo+IAo+IFdvdWxkIHlvdSBtaW5kIHRvIHNldHVwIGEgZ2l0IHJlcG8gZm9yIHRo
aXMgbGFyZ2UgcGF0Y2hzZXQ/Cj4gSXQgd291bGQgYmUgbXVjaCBlYXNpZXIgZm9yIG90aGVyIGd1
eXMgdG8gdGVzdCwgb3RoZXIgdGhhbiBmZXRjaGluZyBhbGwKPiB0aGUgcGF0Y2hlcyBhbmQgYXBw
bHkgdGhlbS4KPiAKCisxLgoKSSdkIGxvdmUgdG8gdHJ5IHRoaXMgc2VyaWVzIG9uIFJvY2s5NjAg
TW9kZWwgQy4KClRoYW5rcywKTWFuaQoKPiBUaGFua3MsCj4gUXUKPiAKPiA+IC0gb3JkZXIgdGhl
bSBpbiBwcm9wZXIgd2F5Cj4gPiAtIHJlYmFzZSBvbiBtYXN0ZXIKPiA+IENoYW5nZXMgZm9yIHYy
Ogo+ID4gLSBoYW5kbGUgTFBERFI0IGNvZGUgYXMgcGFydCBvZiBDT05GSUdfUkFNX1JLMzM5OV9M
UEREUjQKPiA+IC0gc3VwcG9ydCBkYXRhX3RyYWluaW5nIGFuZCBzZXRfcmF0ZSB2aWEgc2RyYW1f
cmszMzk5X29wcwo+ID4gLSBhZGQgcHJvcGVyIHN5c19yZWdfZW5jIG1hY3Jvcwo+ID4gLSBhZGQg
bmV3IHBhdGNoIHRvIHJlbmFtZSB2YXJpYWJsZSBzZHJhbV9wYXJhbXMgd2l0aCBwYXJhbXMKPiA+
IC0gZml4IGZldyBjb21taXQgbWVzc2FnZXMuCj4gPiAKPiA+IHBhdGNoIDAwMDEgLSAwMDE4OiBh
ZGQgZHJhbSBjb25maWcgZW5jIG1hY3JvCj4gPiAKPiA+IHBhdGNoIDAwMTk6IGNvbmZpZ3VyZSBw
aHkgSU8gaW4gZHMgb2R0Cj4gPiAKPiA+IHBhdGNoIDAwMjA6IGFkZCBMUEREUjQgY29uZmlnIAo+
ID4gCj4gPiBwYXRjaCAwMDIxIC0gMDA0MzogbHBkZHI0IGRhdGEgdHJhaW5pbmcgY2hhbmdlcwo+
ID4gCj4gPiBwYXRjaCAwMDQ0IC0gMDA0Njogc3lzY29uIHBtdSBzdXBwb3J0Cj4gPiAKPiA+IHBh
dGNoIDAwNDc6IHNldCA1ME1IeiBkZHIgY2xvY2sKPiA+IAo+ID4gcGF0Y2ggMDA0ODogc2V0IDQw
ME1IeiBkZHIgY2xvY2sKPiA+IAo+ID4gcGF0Y2ggMDA0OTogTFBERFI0LTQwMCB0aW1pbmdzCj4g
PiAKPiA+IHBhdGNoIDAwNTA6IExQRERSNC04MDAgdGltaW5ncwo+ID4gCj4gPiBwYXRjaCAwMDUx
IC0gMDA1MjogbHBkZHI0IHNldCByYXRlCj4gPiAKPiA+IHBhdGNoIDAwNTM6IGVuYWJsZSBscGRk
cjQgc3VwcG9ydCBvbiBSb2NrcHJvNjQKPiA+IAo+ID4gcGF0Y2ggMDA1NDogZW5hYmxlIGxwZGRy
NCBzdXBwb3J0IG9uIFJvY2stUEkgNAo+ID4gCj4gPiBwYXRjaCAwMDU1OiBhZGQgTFBERFItMTAw
IHRpbWluZ3MgdmlhIGR0cwo+ID4gCj4gPiBwYXRjaCAwMDU2OiB1c2UgTFBERFItMTAwIHRpbWlu
Z3Mgb24gUm9ja3BybzY0Cj4gPiAKPiA+IHBhdGNoIDAwNTc6IHVzZSBMUEREUi0xMDAgdGltaW5n
cyBvbiBSb2NrLVBJIDQKPiA+IAo+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcv
Y292ZXIvMTExNjczNC8KPiA+IAo+ID4gQW55IGlucHV0cz8KPiA+IEphZ2FuLgo+ID4gCj4gPiBK
YWdhbiBUZWtpICg1Nyk6Cj4gPiAgIHJhbTogcmszMzk5OiBBZGQgZGRydHlwZSBlbmMgbWFjcm8K
PiA+ICAgcmFtOiByazMzOTk6IEFkZCBjaGFubmVsIG51bWJlciBlbmNvZGVyIG1hY3JvCj4gPiAg
IHJhbTogcmszMzk5OiBBZGQgcm93XzNfNCBlbmMgbWFjcm8KPiA+ICAgcmFtOiByazMzOTk6IEFk
ZCBjaGlwaW5mbyBtYWNybwo+ID4gICByYW06IHJrMzM5OTogQWRkIHJhbmsgZW5jIG1hY3JvCj4g
PiAgIHJhbTogcmszMzk5OiBBZGQgY29sdW1uIGVuYyBtYWNybwo+ID4gICByYW06IHJrMzM5OTog
QWRkIGJrIGVuYyBtYWNybwo+ID4gICByYW06IHJrMzM5OTogQWRkIGRidyBlbmMgbWFjcm8KPiA+
ICAgcmFtOiByazMzOTk6IEFkZCBjczBfcncgbWFjcm8KPiA+ICAgcmFtOiByazMzOTk6IEFkZCBj
czFfcncgbWFjcm8KPiA+ICAgcmFtOiByazMzOTk6IEFkZCBidyBlbmMgbWFjcm8KPiA+ICAgcmFt
OiByazMzOTk6IFJlbmFtZSBzeXNfcmVnIHdpdGggc3lzX3JlZzIKPiA+ICAgcmFtOiByazMzOTk6
IFVwZGF0ZSBjczBfcm93IHRvIHVzZSBzeXNfcmVnMwo+ID4gICByYW06IHJrMzM5OTogVXBkYXRl
IGNzMV9yb3cgdG8gdXNlIHN5c19yZWczCj4gPiAgIHJhbTogcmszMzk5OiBBZGQgY3MxX2NvbCBl
bmMgbWFjcm8KPiA+ICAgcmFtOiByazMzOTk6IEFkZCBkZHIgdmVyc2lvbiBlbmMgbWFjcm8KPiA+
ICAgcmFtOiByazMzOTk6IEFkZCBkZHJ0aW1pbmdDMAo+ID4gICByYW06IHJrMzM5OTogQWRkIERk
ck1vZGUKPiA+ICAgcmFtOiByazMzOTk6IENvbmZpZ3VyZSBwaHkgSU8gaW4gZHMgb2R0Cj4gPiAg
IHJhbTogcm9ja2NoaXA6IEtjb25maWc6IEFkZCBSSzMzOTkgTFBERFI0IGVudHJ5Cj4gPiAgIHJh
bTogcmszMzk5OiBBZGQgbHBkZHI0IHJhbmsgbWFzayBmb3IgY2EgdHJhaW5pbmcKPiA+ICAgcmFt
OiByazMzOTk6IEFkZCBscGRkcjQgcmFuayBtYXNrIGZvciB3ZHFsIHRyYWluaW5nCj4gPiAgIHJh
bTogcmszMzk5OiBNb3ZlIG1vZGVfc2VsIGFzc2lnbm1lbnQKPiA+ICAgcmFtOiByazMzOTk6IERv
bid0IHdhaXQgZm9yIFBMTCBsb2NrIGluIGxwZGRyNAo+ID4gICByYW06IHJrMzM5OTogQXZvaWQg
dHdvIGNoYW5uZWwgWlEgQ2FsIFN0YXJ0IGF0IHRoZSBzYW1lIHRpbWUKPiA+ICAgcmFtOiByazMz
OTk6IENvbmZpZ3VyZSBQSFlfODk4LCBQSFlfOTE5IGZvciBscGRkcjQKPiA+ICAgcmFtOiByazMz
OTk6IENvbmZpZ3VyZSBCT09TVFBfRU4sIEJPT1NUTl9FTiBmb3IgbHBkZHI0Cj4gPiAgIHJhbTog
cmszMzk5OiBDb25maWd1cmUgU0xFV1BfRU4sIFNMRVdOX0VOIGZvciBscGRkcjQKPiA+ICAgcmFt
OiByazMzOTk6IENvbmZpZ3VyZSBQSFkgUlhfQ01fSU5QVVQgZm9yIGxwZGRyNAo+ID4gICByYW06
IHJrMzM5OTogTWFwIGNoaXBzZWxlY3QgZm9yIGxwZGRyNAo+ID4gICByYW06IHJrMzM5OTogQ29u
ZmlndXJlIHRzZWwgd3JpdGUgY2EgZm9yIGxwZGRyNAo+ID4gICByYW06IHJrMzM5OTogRG9uJ3Qg
ZGlzYWJsZSBkZmkgZHJhbSBjbGsgZm9yIGxwZGRyNCwgcmFuayAxCj4gPiAgIHJhbTogcmszMzk5
OiBBZGQgSU8gc2V0dGluZ3MKPiA+ICAgcmFtOiBzZHJhbTogQ29uZmlndXJlIGxwZGRyNCB0c2Vs
IHJkLCB3ciBiYXNlZCBvbiBJTyBzZXR0aW5ncwo+ID4gICByYW06IHJrMzM5OTogQWRkIHRzZWwg
Y29udHJvbCBjbG9jayBkcml2ZQo+ID4gICByYW06IHJrMzM5OTogQ29uZmlndXJlIHNvYyBvZHQg
c3VwcG9ydAo+ID4gICByYW06IHJrMzM5OTogR2V0IGxwZGRyNCB0c2VsX3JkX2VuIGZyb20gaW8g
c2V0dGluZ3MKPiA+ICAgcmFtOiByazMzOTk6IFVwZGF0ZSBscGRkcjQgdnJlZiBiYXNlZCBvbiBp
byBzZXR0aW5ncwo+ID4gICByYW06IHJrMzM5OTogVXBkYXRlIGxwZGRyNCBtb2RlX3NlbCBiYXNl
ZCBvbiBpbyBzZXR0aW5ncwo+ID4gICByYW06IHJrMzM5OTogVXBkYXRlIGxwZGRyNCB2cmVmX21v
ZGVfYWMKPiA+ICAgcmFtOiByazMzOTk6IFNpbXBsaWZ5IGRhdGEgdHJhaW5pbmcgZmlyc3QgYXJn
dW1lbnQKPiA+ICAgcmFtOiByazMzOTk6IEhhbmRsZSBkYXRhIHRyYWluaW5nIHZpYSBvcHMKPiA+
ICAgcmFtOiByazMzOTk6IEFkZCBMUFBEUjQgbXIgZGV0ZWN0aW9uCj4gPiAgIGFybTogaW5jbHVk
ZTogcm9ja2NoaXA6IEFkZCByazMzOTkgcG11IGZpbGUKPiA+ICAgcm9ja2NoaXA6IHJrMzM5OTog
c3lzY29uOiBBZGQgcG11IHN1cHBvcnQKPiA+ICAgcm9ja2NoaXA6IGR0czogcmszMzk5OiBBZGQg
dS1ib290LCBkbS1wcmUtcmVsb2MgZm9yIHBtdQo+ID4gICBjbGs6IHJvY2tjaGlwOiByazMzOTk6
IFNldCA1ME1IeiBkZHIgY2xvY2sKPiA+ICAgY2xrOiByb2NrY2hpcDogcmszMzk5OiBTZXQgNDAw
TUh6IGRkciBjbG9jawo+ID4gICByYW06IHJrMzM5OTogQWRkIExQUEREUjQtNDAwIHRpbWluZ3Mg
aW5jCj4gPiAgIHJhbTogcmszMzk5OiBBZGQgTFBQRERSNC04MDAgdGltaW5ncyBpbmMKPiA+ICAg
cmFtOiByazMzOTk6IEFkZCBzZXRfcmF0ZSBzZHJhbSByazMzOTkgb3BzCj4gPiAgIHJhbTogcmsz
Mzk5OiBBZGQgbHBkZHI0IHNldCByYXRlIHN1cHBvcnQKPiA+ICAgY29uZmlnczogcm9ja3BybzY0
OiBFbmFibGUgTFBERFI0IHN1cHBvcnQKPiA+ICAgY29uZmlnczogcm9jay1waS00OiBFbmFibGUg
TFBERFI0IHN1cHBvcnQKPiA+ICAgcm9ja2NoaXA6IGR0czogcmszMzk5OiBBZGQgTFBERFI0LTEw
MCB0aW1pbmdzCj4gPiAgIHJvY2tjaGlwOiBkdHM6IHJrMzM5OTogcm9ja3BybzY0OiBVc2UgTFBE
RFI0LTEwMCBkdHNpCj4gPiAgIHJvY2tjaGlwOiBkdHM6IHJrMzM5OTogcm9jay1waS00OiBVc2Ug
TFBERFI0LTEwMCBkdHNpCj4gPiAKPiA+ICBhcmNoL2FybS9kdHMvcmszMzk5LXJvY2stcGktNC11
LWJvb3QuZHRzaSAgICAgfCAgICAxICsKPiA+ICBhcmNoL2FybS9kdHMvcmszMzk5LXJvY2twcm82
NC11LWJvb3QuZHRzaSAgICAgfCAgICAxICsKPiA+ICBhcmNoL2FybS9kdHMvcmszMzk5LXNkcmFt
LWxwZGRyNC0xMDAuZHRzaSAgICAgfCAxNTM3ICsrKysrKysrKysrKysrKwo+ID4gIGFyY2gvYXJt
L2R0cy9yazMzOTktdS1ib290LmR0c2kgICAgICAgICAgICAgICB8ICAgIDQgKwo+ID4gIC4uLi9p
bmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3BtdV9yazMzOTkuaCAgICB8ICAgNzIgKwo+ID4gIC4u
Li9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oICB8ICAgMzEgKwo+ID4g
IC4uLi9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzM5OS5oICB8ICAgMjkgKy0K
PiA+ICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9zeXNjb25fcmszMzk5LmMgfCAgICA4
ICsKPiA+ICBjb25maWdzL3JvY2stcGktNC1yazMzOTlfZGVmY29uZmlnICAgICAgICAgICAgfCAg
ICAxICsKPiA+ICBjb25maWdzL3JvY2twcm82NC1yazMzOTlfZGVmY29uZmlnICAgICAgICAgICAg
fCAgICAxICsKPiA+ICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgICAgICAgICAg
ICAgfCAgICA4ICsKPiA+ICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAg
ICAgICAgfCAgICA3ICsKPiA+ICAuLi4vcmFtL3JvY2tjaGlwL3NkcmFtLXJrMzM5OS1scGRkcjQt
NDAwLmluYyAgfCAxNTcwICsrKysrKysrKysrKysrKwo+ID4gIC4uLi9yYW0vcm9ja2NoaXAvc2Ry
YW0tcmszMzk5LWxwZGRyNC04MDAuaW5jICB8IDE1NzAgKysrKysrKysrKysrKysrCj4gPiAgZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgICAgICAgICAgIHwgMTcyNiArKysrKysr
KysrKysrKy0tLQo+ID4gIDE1IGZpbGVzIGNoYW5nZWQsIDYzMTcgaW5zZXJ0aW9ucygrKSwgMjQ5
IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9kdHMvcmszMzk5
LXNkcmFtLWxwZGRyNC0xMDAuZHRzaQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9p
bmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3BtdV9yazMzOTkuaAo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbS1yazMzOTktbHBkZHI0LTQwMC5pbmMKPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW0tcmszMzk5LWxw
ZGRyNC04MDAuaW5jCj4gPiAKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
