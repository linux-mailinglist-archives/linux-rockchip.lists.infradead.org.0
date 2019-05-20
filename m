Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F5B242B0
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 23:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtzFNVAC49dhuSNGCTlYPeN5S7F98M9Dk+jRVfJyTms=; b=fo3GPamh2umvIW
	f4o465ZWKiBk3RBuEz603yU1yFExMD1cEisTyj/8J7CHbNqJeQiRj3kgQEGtSBDFPwzrIHt/XIKKC
	drAFnul047vp5bGYLVYvHBRKofkUaHDwkt6njT6sztQ0P4ExY3yX4wuuYyiLEj9LF1bAcU3pLPC57
	60YPk4t9yiFnLuFPARZSaHNuMZZb3t2IGsvsgKbghSQVe2wXLeeLz1f1+sV4FjQ19K7NYT7Mfhxa5
	mviOZfVB7zPnA5rVB1dBJZQ1mscvt3MsszVmHJud5Ruk+YtgrE2hBl20RiOgHcHsKTL7zNjWtwds9
	Hb3NF4t9xUSAh7RuYWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSpiW-0003gk-Sd; Mon, 20 May 2019 21:21:08 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSpiS-0003fg-D6
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 21:21:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id 145so7369436pgg.9
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 14:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
 b=Ra1/NDHLCkHjBDWAQ/jViNFoVW0b3IxT96gXTCODELWtAKgg1lkNuII+jnLv5j4Teo
 640nloVeyk2sSL3B0cPg5gaPNrgeMGAbytdo8Np/1g/H8h5KBoIZIphwZ4GQcFi9BSlb
 9o3GTLE3vFvoqjaPr2B41+y0m6SfPg5hGYHkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
 b=OI8wz7E23NoPNgOqYkPlc/CbnKiQvrQ4asXRk+ajRabq+CKK9OEjYfEAXM6XA2AqQ4
 GnswuP8/dNiFpqBWm3jCfJsyr6APtOvX4g9WQlCfUzDYMTbj/RqZoGo2mbWUKkuDaZ4i
 ulZryv3EQyLv5jryrAmK4py2B6gxDZsobbkTKsQQk3dGngDATHJrRArfNIwtsptLiuQv
 oeH6kO+UvKH4TGzpVgzoAv8vu41Ldq9rkX5aYrxgPPkX6y/tB6H1Y5jX8tUzcPuhvd+g
 AcOJ59n2IPRLEN5b1OHEWJJ5k49Zo/a5e2LLfPM6s5RpmkBdUwudGleOVW5guSf0pZmC
 ybbw==
X-Gm-Message-State: APjAAAXdv/0blkurZU/cX2tXIXgYPUEYTs5hU/SUuDyeOt5xtzfakm5P
 gsur8zHyaHPDdBjqwD4V36pA8A==
X-Google-Smtp-Source: APXvYqw9S1yPYrd1SlaEZuoSglSNY/CGY6wMOXe8ZG9S0Iy0ayQfjzKwK/uXFS+P+TQk+jsW4OUzLA==
X-Received: by 2002:a63:6dca:: with SMTP id
 i193mr75790021pgc.353.1558387263271; 
 Mon, 20 May 2019 14:21:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a26sm34931443pfl.177.2019.05.20.14.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 14:21:02 -0700 (PDT)
Date: Mon, 20 May 2019 14:21:02 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
Message-ID: <20190520212102.GH40515@google.com>
References: <20190520170132.91571-1-mka@chromium.org>
 <20190520170132.91571-2-mka@chromium.org>
 <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_142106_215997_3DB213DF 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMDE6MjE6MzNQTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPgo+ID4gbWlja2V5IGNyYW1z
IGEgbG90IG9mIGhhcmR3YXJlIGludG8gYSB0aW55IHBhY2thZ2UsIHdoaWNoIHJlcXVpcmVzCj4g
PiBtb3JlIGFnZ3Jlc3NpdmUgdGhlcm1hbCB0aHJvdHRsaW5nIHRoYW4gZm9yIGRldmljZXMgd2l0
aCBhIGxhcmdlcgo+ID4gZm9vdHByaW50LiBDb25maWd1cmUgdGhlIEdQVSB0aGVybWFsIHpvbmUg
dG8gdGhyb3R0bGUgdGhlIEdQVQo+ID4gcHJvZ3Jlc3NpdmVseSBhdCB0ZW1wZXJhdHVyZXMgPj0g
NjDCsEMuIEhlYXQgZGlzc2lwYXRlZCBieSB0aGUKPiA+IENQVXMgYWxzbyBhZmZlY3RzIHRoZSBH
UFUgdGVtcGVyYXR1cmUsIGhlbmNlIHdlIGNhcCB0aGUgQ1BVCj4gPiBmcmVxdWVuY3kgdG8gMS40
IEdIeiBmb3IgdGVtcGVyYXR1cmVzIGFib3ZlIDY1wrBDLiBGdXJ0aGVyIHRocm90dGxpbmcKPiA+
IG9mIHRoZSBDUFVzIG1heSBiZSBwZXJmb3JtZWQgYnkgdGhlIENQVSB0aGVybWFsIHpvbmUuCj4g
Pgo+ID4gVGhlIGNvbmZpZ3VyYXRpb24gbWF0Y2hlcyB0aGF0IG9mIHRoZSBkb3duc3RyYW0gQ2hy
b21lIE9TIDMuMTQKPiAKPiBzL2Rvd25zdHJhbS9kb3duc3RyZWFtCgphY2sKCj4gCj4gPiArICAg
ICAgIGNvb2xpbmctbWFwcyB7Cj4gPiArICAgICAgICAgICAgICAgLyogQWZ0ZXIgMXN0IGxldmVs
IHRocm90dGxlIHRoZSBHUFUgZG93biB0byBhcyBsb3cgYXMgNDAwIE1IeiAqLwo+ID4gKyAgICAg
ICAgICAgICAgIGdwdV93YXJtaXNoX2xpbWl0X2dwdSB7Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB0cmlwID0gPCZncHVfYWxlcnRfd2FybWlzaD47Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb29saW5nLWRldmljZSA9IDwmZ3B1IFRIRVJNQUxfTk9fTElNSVQgMT47Cj4gCj4gQXMg
cGVyIG15IGNvbW1lbnQgaW4gcGF0Y2ggIzEsIHlvdSBhcmUgcHJvYmFibHkgZW5kaW5nIHVwIHRo
cm90dGxpbmcKPiB0byA1MDAgTUh6LCBub3QgNDAwIE1Iei4gIEJlbG93IHdpbGwgYWxsIGhhdmUg
c2ltaWxhciBwcm9ibGVtcyB1bmxlc3MKPiB3ZSBhY3R1YWxseSBkZWxldGUgdGhlIDUwMCBNSHog
b3BlcmF0aW5nIHBvaW50LgoKVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dC4gQXMgcGVyIGRp
c3Vzc2lvbiBvbiBwYXRjaCAjMSB3ZSdsbApkaXNhYmxlIHRoZSA1MDAgTUh6IE9QUCB0byBzdGF5
IGluIHN5bmMgd2l0aCBkb3duc3RyZWFtIGFuZCBhdm9pZApwcm9ibGVtcyBpbiBjYXNlIHNvbWVv
bmUgZGVjaWRlcyB0byByZS1wdXJwb3NlIE5QTEwuCgo+ID4gKyAgICAgICAgICAgICAgIH07Cj4g
PiArCj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgKiBTbGlnaHRs
eSBhZnRlciB3ZSB0aHJvdHRsZSB0aGUgR1BVLCB3ZSdsbCBhbHNvIG1ha2Ugc3VyZSB0aGF0Cj4g
PiArICAgICAgICAgICAgICAgICogdGhlIENQVSBjYW4ndCBnbyBmYXN0ZXIgdGhhbiAxLjQgR0h6
LiAgTm90ZSB0aGF0IHdlIHdvbid0Cj4gPiArICAgICAgICAgICAgICAgICogdGhyb3R0bGUgdGhl
IENQVSBsb3dlciB0aGFuIDEuNCBHSHogZHVlIHRvIEdQVSBoZWF0LS13ZSdsbAo+ID4gKyAgICAg
ICAgICAgICAgICAqIGxldCB0aGUgQ1BVIGRvIHRoZSByZXN0IGl0c2VsZi4KPiA+ICsgICAgICAg
ICAgICAgICAgKi8KPiA+ICsgICAgICAgICAgICAgICBncHVfd2FybV9saW1pdF9jcHUgewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmZ3B1X2FsZXJ0X3dhcm0+Owo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmNwdTAgNCA0PjsKPiAKPiBT
aG91bGRuJ3QgeW91IGxpc3QgY3B1MSwgY3B1MiwgYW5kIGNwdTMgdG9vPyAgVGhhdCdkIG1hdGNo
IHdoYXQKPiB1cHN0cmVhbSBkaWQgZWxzZXdoZXJlIGluIHRoaXMgZmlsZT8KCmFjaywgc2hvdWxk
IGhhdmUgbm90aWNlZCwgSSAneWVsbGVkJyBhdCBvdGhlcnMgYmVmb3JlIGZvciBub3QgZG9pbmcg
dGhpcyAuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
