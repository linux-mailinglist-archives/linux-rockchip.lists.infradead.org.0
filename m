Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2930A37BAD
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 19:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZodmNzfu5uYYsDqP8GnTbA1NiWx5JsQxNW3siFmAaI=; b=BPcJsycMyxi3Ry
	Nlxp3qw5/9mn7iDblQIf0FIm9Mmgh8veWFrTpgzV50YDXLTJJuEF0Oe3uFvGb4WOzF8ttWcje6AVS
	bUa2SnagolqqApJAvnzQTyVSxUEgw+Q4SNEPgHnfttHNbrY8xe96jiOsT9uM24PxBAGOfUgKHWUmD
	sdG6dUasFrUbDCSvnRoHS/5qdTyJrox/Lxqo4DBzeir0a0Nck+6SedvkpiqGNJBY6HhKydtbxFQ9n
	bfqzA+IA85t7FpUay4YF9LKJx9FFhDSmAtIHa4NQGmW1sOvqJkQPddyx+Ka6MiJ7vW7LgiqdMhTAE
	mWiZHKqF49yQGqnm455w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwdN-0005TK-8u; Thu, 06 Jun 2019 17:57:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwdE-0005LZ-9e
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 17:56:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so1232786plo.2
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 10:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=wg/L+X/jg6qit00t5YFiyAIPQXlMXYdfO4PWqxYv4KM=;
 b=dA8vBvHVwB5tyIZL6HFsZQA+oM7gbRX2BD/7asX66sUe55DoUOmY3CcZ++I+fKFlFs
 oRtoMCloCYkyyxraPI/r329rVZdvdMnaYRmrcMERLV9VjuzrrlGBvhJbHs2leafOmQKY
 x7NgGEAgtwYwYd70a+G1XOdwp/unQ7R3QOhLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wg/L+X/jg6qit00t5YFiyAIPQXlMXYdfO4PWqxYv4KM=;
 b=D26oGK7DtqgiR5PnIMTZ9XpaHzSyONuzv6Ei0UQB7sQoJU8YP5VCLYJqAwicbvzHmt
 Q7S5JULnU03B6FEvoifft8k1sTXHvBB+KBOE6t9i27kpiqu3h5KCTKRfmBA48n3WXHEs
 98m/k9RA5evWZNZHxDjfeL8Huq0Q0yOBH3EjyTf91d4NDE3NJoiiqH3C/Om5QRq7Us1c
 xUTwSBa3fzJl3TdCExRZomd9Kx2PluHJiRdoKHFDcFPtD6rHGbp/8YTFWEQp6nT3I4TP
 9hvktS8Litr9fCkvYTUChZruF9qAtiqkLXzjd4Y8xkupg1ET3cIWHDtZvanwDE4MEQd8
 JAPw==
X-Gm-Message-State: APjAAAUqtcyPcYeJNhtgMpY9MQ60mF2h3nXzKm3eoTmpZyzZmLNUrdUs
 CY2vTiRw18O74M2J0Cj4v/3CLw==
X-Google-Smtp-Source: APXvYqwmDqEW/o38wEXDtX8dBjNG0P26I5CKLLWhjKj39nna/Xy2ryhansQqw0pXWqo/EvXbqhoqvg==
X-Received: by 2002:a17:902:8a83:: with SMTP id
 p3mr52200787plo.88.1559843815549; 
 Thu, 06 Jun 2019 10:56:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f13sm2645865pfa.182.2019.06.06.10.56.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 10:56:55 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:56:54 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as
 wake-up signal on veyron
Message-ID: <20190606175654.GQ40515@google.com>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605212427.GP40515@google.com> <2828678.vPWIEPrON5@diego>
 <3394571.WlNFeu2Orz@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3394571.WlNFeu2Orz@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_105656_358096_BFBBEB6A 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMTI6NDY6MDNQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDUuIEp1bmkgMjAxOSwgMjM6NTI6MDAgQ0VTVCBzY2hyaWVi
IEhlaWtvIFN0w7xibmVyOgo+ID4gQW0gTWl0dHdvY2gsIDUuIEp1bmkgMjAxOSwgMjM6MjQ6Mjcg
Q0VTVCBzY2hyaWViIE1hdHRoaWFzIEthZWhsY2tlOgo+ID4gPiBPbiBXZWQsIEp1biAwNSwgMjAx
OSBhdCAxMToxMToxMlBNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4gPiBBbSBN
aXR0d29jaCwgNS4gSnVuaSAyMDE5LCAyMjo0MzoyMCBDRVNUIHNjaHJpZWIgTWF0dGhpYXMgS2Fl
aGxja2U6Cj4gPiA+ID4gPiBUaGlzIGVuYWJsZXMgd2FrZSB1cCBvbiBCbHVldG9vdGggYWN0aXZp
dHkgd2hlbiB0aGUgZGV2aWNlIGlzCj4gPiA+ID4gPiBzdXNwZW5kZWQuIFRoZSBCVF9IT1NUX1dB
S0Ugc2lnbmFsIGlzIG9ubHkgY29ubmVjdGVkIG9uIGRldmljZXMKPiA+ID4gPiA+IHdpdGggQlQg
bW9kdWxlIHRoYXQgYXJlIGNvbm5lY3RlZCB0aHJvdWdoIFVBUlQuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9y
Zz4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21p
dW0ub3JnPgo+ID4gPiA+IAo+ID4gPiA+IEhvdXNla2VlcGluZyBxdWVzdGlvbiwgd2l0aCB0aGUg
dHdvIFNpZ25lZC1vZmYtYnkgbGluZXMsIGlzIERvdWcgdGhlCj4gPiA+ID4gb3JpZ2luYWwgYXV0
aG9yLCBvciB3YXMgdGhpcyBDby1kZXZlbG9wZXItYnk/Cj4gPiA+IAo+ID4gPiBHb29kIHF1ZXN0
aW9uLCBpdCdzIGRlcml2ZWQgZnJvbSBEb3VnJ3MgcGF0Y2ggZm9yIENyT1MgMy4xNCBhbmQKPiA+
ID4gaHR0cHM6Ly9jcnJldi5jb20vYy8xNTc1NTU2IGFsc28gZnJvbSBEb3VnLiBMZXQncyBzYXkg
SSBkaWQgdGhlCj4gPiA+IHBvcnRpbmcgdG8gdXBzdHJlYW0sIGJ1dCBJJ20gcHJldHR5IHN1cmUg
RG91ZyBzcGVudCBtb3JlIHRpbWUgb24gaXQuCj4gPiA+IAo+ID4gPiBNYXliZSBJIHNob3VsZCBy
ZXNlbmQgaXQgd2l0aCBEb3VnIGFzIGF1dGhvciBhbmQgaW5jbHVkZSB0aGUgb3JpZ2luYWwKPiA+
ID4gY29tbWl0IG1lc3NhZ2UsIHdoaWNoIGhhcyBtb3JlIGluZm9ybWF0aW9uLgo+ID4gCj4gPiBJ
dCdzIGp1c3QgdGhhdCB0aGUgZmlyc3QgU2lnbmVkLW9mZiBzaG91bGQgYmUgZnJvbSB0aGUgb3Jp
Z2luYWwgYXV0aG9yLgo+ID4gKEFuZCB0aGUgc2VuZGVyIHRoZSBzZWNvbmQpCj4gPiBJbiB0aGUg
Y28tZGV2ZWxvcGVkLWJ5IGNhc2UgKHNlZSBLZXJuZWwgZG9jdW1lbnRhdGlvbikgdGhlIG9yZGVy
Cj4gPiBkb2Vzbid0IG1hdHRlci4KPiAKPiBIb2xkaW5nIG9mZiBvbiB0aGlzIHBhdGNoIHRpbGwg
d2UgY291bGQgY2xhcmlmeSB0aGUgYXV0aG9yc2hpcC4KCkknZCBzYXkgbGV0J3MgYXR0cmlidXRl
IHRoZSBhdXRob3JzaGlwIHRvIERvdWcuIEZUUiwgdGhlIG9yaWdpbmFsCmRvd25zdHJlYW0gQ2hy
b21lIE9TIHBhdGNoIGlzIGh0dHBzOi8vY3JyZXYuY29tL2MvMjc4MTkwLgoKTm90IHN1cmUgaWYg
dGhlIGluZm9ybWF0aW9uIGluIHRoZSBjb21taXQgbWVzc2FnZSBvZiB0aGUgb3JpZ2luYWwKcGF0
Y2ggaXMgcmVsZXZhbnQgZm9yIHRoZSB1cHN0cmVhbSB2ZXJzaW9uLCBpbiB0aGUgZW5kIGl0IHNl
ZW1zIExQTQp3YXMgbmV2ZXIgaW1wbGVtZW50ZWQsIHNvIGl0IHNob3VsZCBiZSBzdWZmaWNpZW50
IHRvIHNheSB3aGF0IGlzCmFjdHVhbGx5IGRvbmUgdG9kYXkuCgpJbiBzdW1tYXJ5LCBJIHByb3Bv
c2UgdG8gdGFrZSB0aGUgcGF0Y2ggd2l0aCB0aGUgY3VycmVudCBjb21taXQKbWVzc2FnZSwgd2l0
aCBEb3VnIGFzIHRoZSBhdXRob3IuIEhlaWtvLCBjYW4geW91IGNoYW5nZSB0aGUgYXV0aG9yc2hp
cApvciBzaG91bGQgSSBzZW5kIGEgbmV3IHZlcnNpb24/CgpEb3VnIGlmIHlvdSBoYXZlIG9iamVj
dGlvbnMgb3Igd2FudCB1cGRhdGVzIGluIHRoZSBjb21taXQgbWVzc2FnZQooeW91cnMgdGVuZCB0
byBiZSBtb3JlIHZlcmJvc2UgOy0pLCBob2xsZXIuCgpUaGFua3MKCk1hdHRoaWFzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
