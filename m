Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B571A8476
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 18:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+plNkfZUPQcs9aQabMn/C0LzbXTZiaKFU/ZQOa+Gczg=; b=T4HAvmBOEMcIdq
	oiofx9IDaOTwoBDfhdXhRPaUNlhowsARngHXCfs1mpCSF7sRASuAqig1OtJVy31SgKo26YSCiVxub
	sXoHtmamHezEghUdcNJyoEtVQpUxdS/8534eFitqKrv2hoc8UsOJvht26fjgJmo61THKThuT4sgBd
	Izmo05H92dihXIEAD3SOfVtViLSALanPb2tbN36uMylmq9jZSQGlPr7TgNubII4jo1EdRuo8GWCtp
	xV9kLCCB1N0DSJT1j0j9OMlr8eg9v6mpngVRAUop3/Axi9yOAvubr+/hELvxMDbsnbbHdSxoLEF1m
	2QRvk6yW8FiopxAtAv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOFg-0000rw-KZ; Tue, 14 Apr 2020 16:17:32 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOFZ-0000qx-46
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 16:17:31 +0000
Received: by mail-qk1-x741.google.com with SMTP id s63so9679960qke.4
 for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2020 09:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v7rnVYirR/SRve1J9uds+lWJ9Mzkqc7AFBPaHJFLGkk=;
 b=JXkZvkJmU41vDNGmUXCbvq9Wg2FZAVAJ78E2+vwYiJc2Xaw+F6/cnWEh84m+qTiCAH
 x/xsHq7+yGrBXuKez/NGaFeoD0jsiinpNvd2VtFDw0Q9HB7qIphyJv316qQTOk/MZTlq
 8pk35kxDgNuO8qukU46T63noDwZW52d1b7nfpTiSk3bJ0HfYYKEzuqvqDIgyIcdqSSao
 Xzj+V7Dp6XPN5YPzgZlHEFWh2zzHRuVKY4f2fIaLm1FozX2t5ozwpHKOEziunZDtbio2
 bp5uWJMlJeVdPawZsN1BvAvc0n7xHT35MXXnOvfFaK9we59Lsb9QVaLPGiIunHp9I5EL
 xBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v7rnVYirR/SRve1J9uds+lWJ9Mzkqc7AFBPaHJFLGkk=;
 b=TqX50MQJEPz1hzYD41HwsK4qft2jD2XFDdjowcqYvKIa+wpVxERZDIxsiDPgxeDE/r
 tka+DVhZYzGDcGpCSZ2JjttdqngLDrJB877w95fq3K6fHANXm5ljeEo6HPvbGt/GBbPV
 s5MdH6xvOM96n2hcXq2KIkAK3b7QZkvAjBN0h4mBy9+u2es0Su4CYEaSzLn5cSQegPsc
 inhHrh/5Kq6FObhPovNqE9iV4LcbreOcRX5T56EAxNvWbb5C8GgE7Dv9VXcuG21GxqwG
 1vKybcmXVz18KCDf30EQsuDNKxYTWYDfw4Kioyu3TiQSBURHWK1Ttge0lOg3FJ6ZZfwa
 7uoA==
X-Gm-Message-State: AGi0PuYu95E9h+HJFDWMax65+3YNhkGv0UjYH7MjaQWdgZzAZBQHnwbo
 jOYeVj09U+Y+LhY+Kk6/Jwg3zUmHnk19m6474O0=
X-Google-Smtp-Source: APiQypLK/mVcXozeorI1FegVUxYPpLP5tLwDlzFT4BMXGlK/FfbPJLIiVRC6v5yRNuW/ZW37/aKGm8LEj/N1nVGoeOw=
X-Received: by 2002:a37:6c81:: with SMTP id
 h123mr21677203qkc.290.1586881043263; 
 Tue, 14 Apr 2020 09:17:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
 <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
 <20200410192926.GA24668@arya.arvanta.net>
 <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
In-Reply-To: <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 14 Apr 2020 18:17:11 +0200
Message-ID: <CAFqH_50ftrsCZjazu_-DOcC4pqZf2UJ2N7e3HqWitz16jyUUOA@mail.gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_091725_188523_A63AEC56 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps@arvanta.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgRG91ZyBhbmQgTWlsYW4sCgpUaGFua3MgZm9yIHByb3ZpZGluZyB0aGlzIGluZm9ybWF0aW9u
LgoKTWlzc2F0Z2UgZGUgRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPiBkZWwg
ZGlhIGRsLiwgMTMKZOKAmWFici4gMjAyMCBhIGxlcyAxNzoyMzoKPgo+IEhpLAo+Cj4gT24gRnJp
LCBBcHIgMTAsIDIwMjAgYXQgMTI6MjkgUE0gTWlsYW4gUC4gU3RhbmnEhyA8bXBzQGFydmFudGEu
bmV0PiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+Cj4gPiBPbiBGcmksIDIwMjAtMDQtMTAgYXQgMDg6
MjgsIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBPbiBGcmksIEFw
ciAxMCwgMjAyMCBhdCA1OjU2IEFNIEVucmljIEJhbGxldGJvIFNlcnJhCj4gPiA+IDxlYmFsbGV0
Ym9AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEhpIE1pbGFuLAo+ID4gPiA+Cj4g
PiA+ID4gUmlnaHQsIHRoaXMgaXMgYW4gYW5ub3lpbmcgaXNzdWUgYnV0IGFsc28ga25vd24sIHVu
Zm9ydHVuYXRlbHksIEkKPiA+ID4gPiBwZXJzb25hbGx5IGRpZG4ndCBoYXZlIHRpbWUgdG8gbG9v
ayBhdC4gYnV0IGl0IGlzIGluIG15IFRPRE8uCj4gPiA+Cj4gPiA+IFJhbmRvbSBzaG90IGluIHRo
ZSBkYXJrLCBidXQgYW55IGNoYW5jZSBzb21laG93IHlvdXIgUEhZIGNsb2NrIGFuZAo+ID4gPiBQ
Q0xLIGZvciB0aGUgZURQIGRvbid0IG1hdGNoPyAgSWYgdGhleSBkb24ndCB0aGVuIChJSVJDKSB5
b3UnbGwgZ2V0Cj4gPiA+IHJhbmRvbSBmYWlsdXJlcyB0byBhY2Nlc3MgZURQIHJlZ2lzdGVycy4K
PiA+ID4KPiA+ID4gU29tZSBoaXN0b3J5IGluIDxodHRwczovL2NycmV2LmNvbS9jLzQzMzM5Mz4u
ICBJdCBsb29rcyBsaWtlIHRoZQo+ID4gPiBjaGFuZ2VzIGluIHRoYXQgcGF0Y2ggYXJlIHVwc3Ry
ZWFtIGJ1dCBpZiBzb21ldGhpbmcgZWxzZSBoYXBwZW5lZCB0bwo+ID4gPiBtYWtlIHlvdXIgUEhZ
IGFuZCBQQ0xLIG1pc21hdGNoIGl0IGNvdWxkIGNhdXNlIHNpbWlsYXIgc3ltcHRvbXMuCj4gPiA+
Cj4gPiA+IC4uLm9mIGNvdXJzZSBpdCdzIGFsd2F5cyBwb3NzaWJsZSAocHJvYmFibGUpIHRoYXQg
aXQncyBzb21ldGhpbmcKPiA+ID4gZGlmZmVyZW50LCBidXQgc2luY2UgdGhhdCB3YXMgc3VjaCBh
IHdlaXJkIGFuZCBoYXJkLXRvLXRyYWNrLWRvd24KPiA+ID4gcHJvYmxlbSBJIGZpZ3VyZWQgSSdk
IGF0IGxlYXN0IG1ha2Ugc3VyZSBpdCB3YXNuJ3QgdGhhdC4KPiA+Cj4gPiBOb3Qgc3VyZSBJIHVu
ZGVyc3Rvb2QgKEknbSBub3QgZ3JhcGhpYyBoYXJkd2FyZSBwcm9ncmFtbWVyKSBidXQgSQo+ID4g
Y2hhbmdlZCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIGZpbGUgYXJv
dW5kIGxpbmUKPiA+IDEzNjcgKGN1cnJlbnQgbWFpbmxpbmUga2VybmVsKSwgdGhpczoKPiA+ICAg
ICBhc3NpZ25lZC1jbG9ja3MgPQo+ID4gICAgICAgPCZjcnUgUExMX0dQTEw+LCA8JmNydSBQTExf
Q1BMTD4sCj4gPiAgICAgICA8JmNydSBQTExfTlBMTD4sCj4gPiAgICAgICA8JmNydSBBQ0xLX1BF
UklIUD4sIDwmY3J1IEhDTEtfUEVSSUhQPiwKPiA+ICAgICAgIDwmY3J1IFBDTEtfUEVSSUhQPiwK
PiA+ICAgICAgIDwmY3J1IEFDTEtfUEVSSUxQMD4sIDwmY3J1IEhDTEtfUEVSSUxQMD4sCj4gPiAg
ICAgICA8JmNydSBQQ0xLX1BFUklMUDA+LCA8JmNydSBBQ0xLX0NDST4sCj4gPiAgICAgICA8JmNy
dSBIQ0xLX1BFUklMUDE+LCA8JmNydSBQQ0xLX1BFUklMUDE+LAo+ID4gICAgICAgPCZjcnUgQUNM
S19WSU8+LCA8JmNydSBBQ0xLX0hEQ1A+LAo+ID4gICAgICAgPCZjcnUgQUNMS19HSUNfUFJFPiwK
PiA+ICAgICAgIDwmY3J1IFBDTEtfRERSPjsKPiA+ICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9
Cj4gPiAgICAgICAgPDU5NDAwMDAwMD4sICA8ODAwMDAwMDAwPiwKPiA+ICAgICAgIDwxMDAwMDAw
MDAwPiwKPiA+ICAgICAgICA8MTUwMDAwMDAwPiwgICA8NzUwMDAwMDA+LAo+ID4gICAgICAgICA8
Mzc1MDAwMDA+LAo+ID4gICAgICAgIDwxMDAwMDAwMDA+LCAgPDEwMDAwMDAwMD4sCj4gPiAgICAg
ICAgIDw1MDAwMDAwMD4sIDw2MDAwMDAwMDA+LAo+ID4gICAgICAgIDwxMDAwMDAwMDA+LCAgIDw1
MDAwMDAwMD4sCj4gPiAgICAgICAgPDQwMDAwMDAwMD4sIDw0MDAwMDAwMDA+LAo+ID4gICAgICAg
IDwyMDAwMDAwMDA+LAo+ID4gICAgICAgIDwyMDAwMDAwMDA+Owo+ID4KPiA+IGFuZCBjaGFuZ2Vk
ICA8NTk0MDAwMDAwPiB0byAgPDYwMDAwMDAwMD4KPiA+IGJ1aWxkIGtlcm5lbCBhbmQgaXQgYm9v
dHMgYnV0IGRpc3BsYXkgaXMgYmxhbmsgYWZ0ZXIgYm9vdC4KPgo+IEkgdGhpbmsga2V2aW4gYWxy
ZWFkeSBvdmVycmlkZXMgdGhvc2UgY2xvY2tzIGluIGl0cyBkdHMuICBJIHdhcyBtb3JlCj4gdGhp
bmtpbmcgb2YgbG9va2luZyBhdCAiL3N5cy9rZXJuZWwvZGVidWcvY2xrL2Nsa19zdW1tYXJ5IiBh
bmQgc2VlaW5nCj4gaWYgdGhlcmUgd2FzIGEgY2xvY2sgbWlzbWF0Y2guCj4KCkFsdGhvdWdoIEkg
ZG9uJ3QgZGlzY2FyZCB0aGF0IHRoaXMgd291bGQgYmUgdGhlIHByb2JsZW0sIEkgdGhpbmsgaXQg
aXMKbW9yZSBhIHJhY2luZyBwcm9ibGVtIHdpdGggdGhlIHRyYWNraW5nIHN0YXR1cyBvZiB0aGUg
Y3J0YyBhY3RpdmUgYW5kCnNlbGZfcmVmcmVzaF9hY3RpdmUgdmFyaWFibGVzIGR1cmluZyB0aGUg
c3VzcGVuZCBwYXRoIGFuZCBQU1IuIEkuZSwgaWYKSSBhcHBseSB0aGUgZm9sbG93aW5nIHBhdGNo
IHdoaWNoIHNldHMgYSBkZWxheSBvZiAxMDBtcyBpbiB0aGUgZGVsYXllZAplbnRyeSB3b3JrIHRv
IGVudHJ5IHRoZSBQU1Igc3RhdGUgKHNpbWlsYXIgdG8gd2hhdCB3ZSBoYWQgYmVmb3JlIHRoZQpj
b21taXQgSSBtZW50aW9uZWQpLCBzdXNwZW5kIHJlc3VtZSB3b3JrcyBhcyBleHBlY3RlZCBmb3Ig
bWUuCgpAQCAtMjE4LDcgKzIzNCw3IEBAIHZvaWQgZHJtX3NlbGZfcmVmcmVzaF9oZWxwZXJfYWx0
ZXJfc3RhdGUoc3RydWN0CmRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogICAgICAgICAgICAgICAg
bXV0ZXhfdW5sb2NrKCZzcl9kYXRhLT5hdmdfbXV0ZXgpOwoKICAgICAgICAgICAgICAgIG1vZF9k
ZWxheWVkX3dvcmsoc3lzdGVtX3dxLCAmc3JfZGF0YS0+ZW50cnlfd29yaywKLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbXNlY3NfdG9famlmZmllcyhkZWxheSkpOworICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBtc2Vjc190b19qaWZmaWVzKDEwMCkpOwogICAgICAgIH0K
IH0KClNvbWUgbW9yZSBpbmZvIGlzIHRoYXQgSSB3YXMgbm90IGFibGUgdG8gcmVwcm9kdWNlIHRo
ZSBwcm9ibGVtIGJ5CnRyaWdnZXJpbmcgYW4gJ2VjaG8gbWVtID4gL3N5cy9wb3dlci9zdGF0ZScg
VGhlIG9ubHkgd2F5IEkgY2FuCnJlcHJvZHVjZSB0aGUgaXNzdWUgaXMgZG9pbmcgYXMgJ3N5c3Rl
bWN0bCBzdXBlbmQnIGNvbW1hbmQsIHdoaWNoIGlmIEkKYW0gbm90IG1pc3Rha2VuIGRvZXMgYSBE
UE1TIG9mZiBiZWZvcmUgc3VzcGVuZGluZy4KCi0gRW5yaWMKCj4gLURvdWcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
