Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA441A68AD
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Apr 2020 17:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZTV+b4DD1nn91kPJ87YXhZflrFGWeNR0Q/We1ckIgM=; b=JAD83FAjtIVUyG
	HlItu85yS1muJhsTeCkb1WBVR2v7nGwDlbHh+1Ow1u7EyfeHuwGRhQ6NOwnTXNHBPuszCmRXhSHvb
	KAzHnPBiLj4uV72WXnZ8DjwAwLds/cEpbaLOH5JpVbQWVrcbQXKD92uiQXUJJfNz45rCvpp4dUgV1
	75xaGhAS2H5WDfOEkCrBKyqu7r6OMzmn1hPGUMPE0CPropnOOGOv02iZ+2k9kZZicKEOTaiwaHtjM
	4P7z8U0g627ZR++2Kgpj7UG7K3EMim9zOXc8SH0Q2D7jeiaz9o0Yzc5yeUBIVBQToB7zYq6xyshb8
	HwJQ4BZgr45wUnfPCFEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO0wF-0002uI-MO; Mon, 13 Apr 2020 15:23:55 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO0wD-0002tx-5h
 for linux-rockchip@lists.infradead.org; Mon, 13 Apr 2020 15:23:54 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z1so1601462vsn.11
 for <linux-rockchip@lists.infradead.org>; Mon, 13 Apr 2020 08:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C50kJ85/nSczMoKu3PBZb1ID0FMa7zdDFlgzLtLUbRg=;
 b=cfBi6MaPmAeDJIMWgTkwm2UbQZez+BaFa3Amx7bqUN22LEJvjRP60dTjZ39hWkidOv
 Hgru7lujIjt2Op1mqg4MGQz6Lbb845RXJkxW8viPXiwWQsgtoMlwCO+UQhlObrxo2y5b
 V7gBmBykOI/0jGG3soFK6niYM2kCM+oH+QgCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C50kJ85/nSczMoKu3PBZb1ID0FMa7zdDFlgzLtLUbRg=;
 b=G6Nl/Ln7P9+EMSjjoIU70ymW53OVy4p7SdulHUx3mCxKVTgXG4sG1tMUPW27elqA2C
 go2Ave4h2Y2ufQKtNyYXGzypX6BB39riCgN9GDQ7wmpQug5FRjgLMeG3R4BBqLgO3pVv
 R2dVmtT5XXF7dL2LrEFxGI/pGKnLUbyCNkwh9Gv1Ez386n/GbT1qOeeoPzcSgKrnynFQ
 asxX5iBR/gznxyX69eSuHh4z68BkIRKliX8zcNl4VxxZSM0a8XzF6dkVD7bIFny8VX3X
 fPZjxcsnZs85nUF6FlNe0qOnisG2HDZjs8rPb7otgUK9Thf7hSK65xSvU/YxvTt4UOp/
 Fdpg==
X-Gm-Message-State: AGi0Pubjd4PZwk3KqOADwzXx3YytjWlaOk0d0DqxQ99HAd0GixnyRZXz
 VHTPWFSklXvgji6xoUvp2gMT5RI8yMk=
X-Google-Smtp-Source: APiQypIoZuhVsS/W5eEX0lGI+P5bT0kxiP7m+b2NutqGUhKZrCcZxmt6g6q3jDgxBEutuA69G2j1Ow==
X-Received: by 2002:a67:2f07:: with SMTP id v7mr12376815vsv.7.1586791429324;
 Mon, 13 Apr 2020 08:23:49 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id 7sm2543667uap.16.2020.04.13.08.23.48
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 08:23:48 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id k19so4797184vsm.6
 for <linux-rockchip@lists.infradead.org>; Mon, 13 Apr 2020 08:23:48 -0700 (PDT)
X-Received: by 2002:a05:6102:3204:: with SMTP id
 r4mr11577192vsf.109.1586791427858; 
 Mon, 13 Apr 2020 08:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
 <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
 <20200410192926.GA24668@arya.arvanta.net>
In-Reply-To: <20200410192926.GA24668@arya.arvanta.net>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 Apr 2020 08:23:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
Message-ID: <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
To: =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps@arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_082353_240252_CFB54280 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Enric Balletbo Serra <eballetbo@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIEFwciAxMCwgMjAyMCBhdCAxMjoyOSBQTSBNaWxhbiBQLiBTdGFuacSHIDxt
cHNAYXJ2YW50YS5uZXQ+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBGcmksIDIwMjAtMDQtMTAgYXQg
MDg6MjgsIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBGcmksIEFwciAx
MCwgMjAyMCBhdCA1OjU2IEFNIEVucmljIEJhbGxldGJvIFNlcnJhCj4gPiA8ZWJhbGxldGJvQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhpIE1pbGFuLAo+ID4gPgo+ID4gPiBSaWdodCwg
dGhpcyBpcyBhbiBhbm5veWluZyBpc3N1ZSBidXQgYWxzbyBrbm93biwgdW5mb3J0dW5hdGVseSwg
SQo+ID4gPiBwZXJzb25hbGx5IGRpZG4ndCBoYXZlIHRpbWUgdG8gbG9vayBhdC4gYnV0IGl0IGlz
IGluIG15IFRPRE8uCj4gPgo+ID4gUmFuZG9tIHNob3QgaW4gdGhlIGRhcmssIGJ1dCBhbnkgY2hh
bmNlIHNvbWVob3cgeW91ciBQSFkgY2xvY2sgYW5kCj4gPiBQQ0xLIGZvciB0aGUgZURQIGRvbid0
IG1hdGNoPyAgSWYgdGhleSBkb24ndCB0aGVuIChJSVJDKSB5b3UnbGwgZ2V0Cj4gPiByYW5kb20g
ZmFpbHVyZXMgdG8gYWNjZXNzIGVEUCByZWdpc3RlcnMuCj4gPgo+ID4gU29tZSBoaXN0b3J5IGlu
IDxodHRwczovL2NycmV2LmNvbS9jLzQzMzM5Mz4uICBJdCBsb29rcyBsaWtlIHRoZQo+ID4gY2hh
bmdlcyBpbiB0aGF0IHBhdGNoIGFyZSB1cHN0cmVhbSBidXQgaWYgc29tZXRoaW5nIGVsc2UgaGFw
cGVuZWQgdG8KPiA+IG1ha2UgeW91ciBQSFkgYW5kIFBDTEsgbWlzbWF0Y2ggaXQgY291bGQgY2F1
c2Ugc2ltaWxhciBzeW1wdG9tcy4KPiA+Cj4gPiAuLi5vZiBjb3Vyc2UgaXQncyBhbHdheXMgcG9z
c2libGUgKHByb2JhYmxlKSB0aGF0IGl0J3Mgc29tZXRoaW5nCj4gPiBkaWZmZXJlbnQsIGJ1dCBz
aW5jZSB0aGF0IHdhcyBzdWNoIGEgd2VpcmQgYW5kIGhhcmQtdG8tdHJhY2stZG93bgo+ID4gcHJv
YmxlbSBJIGZpZ3VyZWQgSSdkIGF0IGxlYXN0IG1ha2Ugc3VyZSBpdCB3YXNuJ3QgdGhhdC4KPgo+
IE5vdCBzdXJlIEkgdW5kZXJzdG9vZCAoSSdtIG5vdCBncmFwaGljIGhhcmR3YXJlIHByb2dyYW1t
ZXIpIGJ1dCBJCj4gY2hhbmdlZCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5k
dHNpIGZpbGUgYXJvdW5kIGxpbmUKPiAxMzY3IChjdXJyZW50IG1haW5saW5lIGtlcm5lbCksIHRo
aXM6Cj4gICAgIGFzc2lnbmVkLWNsb2NrcyA9Cj4gICAgICAgPCZjcnUgUExMX0dQTEw+LCA8JmNy
dSBQTExfQ1BMTD4sCj4gICAgICAgPCZjcnUgUExMX05QTEw+LAo+ICAgICAgIDwmY3J1IEFDTEtf
UEVSSUhQPiwgPCZjcnUgSENMS19QRVJJSFA+LAo+ICAgICAgIDwmY3J1IFBDTEtfUEVSSUhQPiwK
PiAgICAgICA8JmNydSBBQ0xLX1BFUklMUDA+LCA8JmNydSBIQ0xLX1BFUklMUDA+LAo+ICAgICAg
IDwmY3J1IFBDTEtfUEVSSUxQMD4sIDwmY3J1IEFDTEtfQ0NJPiwKPiAgICAgICA8JmNydSBIQ0xL
X1BFUklMUDE+LCA8JmNydSBQQ0xLX1BFUklMUDE+LAo+ICAgICAgIDwmY3J1IEFDTEtfVklPPiwg
PCZjcnUgQUNMS19IRENQPiwKPiAgICAgICA8JmNydSBBQ0xLX0dJQ19QUkU+LAo+ICAgICAgIDwm
Y3J1IFBDTEtfRERSPjsKPiAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPQo+ICAgICAgICA8NTk0
MDAwMDAwPiwgIDw4MDAwMDAwMDA+LAo+ICAgICAgIDwxMDAwMDAwMDAwPiwKPiAgICAgICAgPDE1
MDAwMDAwMD4sICAgPDc1MDAwMDAwPiwKPiAgICAgICAgIDwzNzUwMDAwMD4sCj4gICAgICAgIDwx
MDAwMDAwMDA+LCAgPDEwMDAwMDAwMD4sCj4gICAgICAgICA8NTAwMDAwMDA+LCA8NjAwMDAwMDAw
PiwKPiAgICAgICAgPDEwMDAwMDAwMD4sICAgPDUwMDAwMDAwPiwKPiAgICAgICAgPDQwMDAwMDAw
MD4sIDw0MDAwMDAwMDA+LAo+ICAgICAgICA8MjAwMDAwMDAwPiwKPiAgICAgICAgPDIwMDAwMDAw
MD47Cj4KPiBhbmQgY2hhbmdlZCAgPDU5NDAwMDAwMD4gdG8gIDw2MDAwMDAwMDA+Cj4gYnVpbGQg
a2VybmVsIGFuZCBpdCBib290cyBidXQgZGlzcGxheSBpcyBibGFuayBhZnRlciBib290LgoKSSB0
aGluayBrZXZpbiBhbHJlYWR5IG92ZXJyaWRlcyB0aG9zZSBjbG9ja3MgaW4gaXRzIGR0cy4gIEkg
d2FzIG1vcmUKdGhpbmtpbmcgb2YgbG9va2luZyBhdCAiL3N5cy9rZXJuZWwvZGVidWcvY2xrL2Ns
a19zdW1tYXJ5IiBhbmQgc2VlaW5nCmlmIHRoZXJlIHdhcyBhIGNsb2NrIG1pc21hdGNoLgoKLURv
dWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
