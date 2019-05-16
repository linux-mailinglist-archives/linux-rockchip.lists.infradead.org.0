Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E82420D84
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 18:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iibp2dDwJE2d6d5DmrsMCe1o5WMLo6n2pcGMHB7/5d4=; b=N/c4m80BnHCjvM
	Ns+tmPJBuILxPzuu8yz6qlrvjkgDNu7LrfJJ6xTcyiPX+OOTT64IX7tQ9uCx3+pI5JPCP/s3citiU
	Y1JKOyzrBbsHMF/iIBbcnI2XVPshAIoSVhgO41v9aGHg5Gixe4IBoE7Va/p2orzScVSLgujaDtzvp
	dvatFrTs8gmJhpEQht/AbyQHJyUQWTu+5rcRXU2XCQ/nABlEfdKaTPZ1dRPLtdoQQkjpE6agzJ/8s
	YZJOJMAD6mo9FO16KisDrwObXoJlNyP1WWP1irvh7N2YC2UvecOKpuVV9P/aSo74zwlatYiad6Hv/
	coS3eUd1w4p+ddc7ZOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJhE-0007Tl-I9; Thu, 16 May 2019 16:57:32 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJhC-0007FM-14
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 16:57:31 +0000
Received: by mail-ua1-x943.google.com with SMTP id p13so1549874uaa.11
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
 b=nmkNcSzFh5OLOVDoIP1Pa1b3QlFQ9XUYxSji0qAe4uJ8qe8/ySQ0B315ClUKfCMxCI
 QreA9gJduIu2vRUzTpTojdUotl5e6fJq+SceMidLHwj0AeQMK7NwYdEyur30qezJkGB1
 6P6pUygJV9C+M4itjNtSHxbE6pyY55gvxIt8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
 b=qm7P8AtU1Eq1HbB5uOchpjKpouusWQnvCigOfSrR7HrlEdac4yeX/Gsyk3IuNyjF9O
 g67W592wZvlgnJwLlNOTAkO9h0AImBQi6h9Fk9UhZegrhEgKF7eAUQzuhN73sg9E+5F+
 n8AV1lPTuekHpOOF7bhuZgQ0+vMNgXk/S90/OK/WDut9PDW3sLzZE6qxgnhT8h/drrfX
 Hn/zdptOOKZu3AnSPlLkF3md44suGcHH52UuzuYgN/ALzRMYjp9430YPuxITidzl8CjH
 O5AVMdGZvEDdt9tS3B39YO8zp5oXtPooqzDsl3OVJJ5Ag1vgZpmm538ZsBqUrE478nqJ
 DBiQ==
X-Gm-Message-State: APjAAAVV1AexKS65cs27ZG0Sfi7hPnHithfHngMAT50rZ2+MxASEq6/y
 v0a2IJ9WXWcBRSTaabSBOZjViPUBMpM=
X-Google-Smtp-Source: APXvYqzaG3Vt63ojqCbtOLFSsTtQuqTF1eu9Ue4p3+Td95SsL96k6NpkP9mA8QKSpEwMs5mHFepTqA==
X-Received: by 2002:ab0:2407:: with SMTP id f7mr14094990uan.18.1558025847968; 
 Thu, 16 May 2019 09:57:27 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com.
 [209.85.222.42])
 by smtp.gmail.com with ESMTPSA id u83sm2180443vke.33.2019.05.16.09.57.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id r7so1573089ual.2
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:57:26 -0700 (PDT)
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr1792277uar.109.1558025846288; 
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:57:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: raise CPU trip point
 temperature for veyron to 100 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095730_115601_253B7155 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGksCgpPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCA5OjI5IEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gVGhpcyB2YWx1ZSBtYXRjaGVzIHdoYXQgaXMgdXNl
ZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhlICdvZmZpY2lh
bCcga2VybmVsIGZvciB2ZXlyb24gZGV2aWNlcy4gS2VlcCB0aGUgdGVtcGVyYXR1cmUKPiBmb3Ig
J3NwZWVkeScgYXQgOTDCsEMsIGFzIGluIHRoZSBkb3duc3RyZWFtIGtlcm5lbC4KPgo+IEluY3Jl
YXNlIHRoZSB0ZW1wZXJhdHVyZSBmb3IgYSBoYXJkd2FyZSBzaHV0ZG93biB0byAxMjXCsEMsIHdo
aWNoCj4gbWF0Y2hlcyB0aGUgZG93bnN0cmVhbSBjb25maWd1cmF0aW9uIGFuZCBnaXZlcyB0aGUg
c3lzdGVtIGEgY2hhbmNlCj4gdG8gc2h1dCBkb3duIG9yZGVybHkgYXQgdGhlIGNyaXRpY2lhbCB0
cmlwIHBvaW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJv
bWl1bS5vcmc+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIHBhdGNoIGFkZGVkIHRvIHRoZSBz
ZXJpZXMKPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRz
IHwgNCArKysrCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaSAgICAgICB8
IDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKClJldmlld2VkLWJ5
OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
