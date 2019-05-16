Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A90420D89
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 18:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+9LKo4kiZtPLs3YzUiQW4E88gz1RpuLo58ARg51N/4=; b=B2yU4dEMSdbeKS
	RkLdksQwvlkD9wo6ERWGWybDscLEu0wGYgPRR9xjyewg36wLJAT/iIS2OwVc/G5B/qa6qKaqAnc0Q
	YUhm1dShXiYoz1L/gSQgFSkvZSn632jsuYt3+bbUlWiQrVwFuDrrRHf+5jb4y+7k1wIxrlpp6TjK7
	Npo3qRnp5SW7SWmoIG/cCnpTV8rNnK+vsta323MAlJctSSkmAJQmxD+qVLOEpsvQPQR59hyrUI3b1
	nduDKu7dAbVmZ7q0yoKHrLsBOaAU3emQi753W9oV1EScjpq6uYUuPCVrhhxTZRQOEseLjSKw75J0I
	v07LRSpXIpu41bR7v2Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJhw-0008LW-3E; Thu, 16 May 2019 16:58:16 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJht-0008KZ-5w
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 16:58:14 +0000
Received: by mail-vk1-xa42.google.com with SMTP id l73so1218377vkl.8
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
 b=egW17PcXO0BjCt7HxJYjB66FokiITWMqtp0008EeL5GbbhpQKonq2gHOFHRGrZ0me5
 TihY4jgy1laPIDXVBzdJoZ0YexQhL6W55jcDyEERvFOMCdfrqTI14wa/uBSkoCgEekSx
 1nR/Oufvd/pGx1D8omffLmUof28M5fDBbkk5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
 b=Yw7KcOT6QIWXJMSG6IVDdCh3CYYJ1cKDwODS2DBsLhQMHRGpUByut+m5mBEVYgQprV
 Ejfz06gcxRHelFzEF/jKD+r515YhQo9GsYOygIYz/iMztO8jDaUf6n7aBmmtfWbS0ECR
 RZP2S0w1Ywcyz6cOdbfL3R4R718vBTTRQVpYc3Ofc+IZeycttrETQNEvG4iGI7r1ChLl
 5vNF+L1hr3k3n11qjhQcFOLIfxznPcbp1t/1erumVvrmEDb2Cu6GusrMCrmqpUM5givN
 wHLNtr1u2+C8R86EO4ohPoodGYWT5vfPfMNllhyNObj7Cjm4bAUZhJOoHWsyw9RfSC6q
 BhfA==
X-Gm-Message-State: APjAAAV7BkDEjLUV6yFcQnxjRaiEc3yqbcimK+DpoeeD1eaAst5/nVMc
 769evo1iLIF8OZZwcsSmYAEaWTfIcSU=
X-Google-Smtp-Source: APXvYqxvmFMzuYCoPInYUSp+88vZH33zKu65wBNJ+4ZZbaNLvOHVkZ/J9bvIrurcY22eVJf9cMGcWA==
X-Received: by 2002:a1f:d4f:: with SMTP id 76mr23382690vkn.30.1558025891509;
 Thu, 16 May 2019 09:58:11 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com.
 [209.85.217.51])
 by smtp.gmail.com with ESMTPSA id e62sm5071020vsc.24.2019.05.16.09.58.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:58:10 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id l20so2798848vsp.3
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:58:10 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr16923750vsm.144.1558025889986; 
 Thu, 16 May 2019 09:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
 <20190516162942.154823-2-mka@chromium.org>
In-Reply-To: <20190516162942.154823-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:57:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point
 temperatures for veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095813_216423_920FA05C 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gVGhlIHZhbHVlcyBtYXRjaCB0aG9yc2UgdXNlZCBi
eSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhlICdvZmZpY2lhbCcg
a2VybmVsIGZvciB2ZXlyb24gZGV2aWNlcy4gS2VlcCB0aGUgY3JpdGljYWwKPiB0cmlwIHBvaW50
IGZvciBzcGVlZHkgYXQgOTDCsEMgYXMgaW4gdGhlIGRvd25zdHJlYW0gY29uZmlndXJhdGlvbi4K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+
IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBhbHNvIHJhaXNlIHRlbXBlcmF0dXJlIG9mIGNyaXRp
Y2FsIHRyaXAgcG9pbnQKPiAtIGFkZCBlbnRyaWVzIGF0IHBvc2l0aW9uIGluIGFscGhhYmV0aWNh
bCBvcmRlcgo+IC0gYWRkZWQgZW50cnkgdG8ga2VlcCBjcml0aWNhbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkgYXQgOTDCsEMKPiAtIHVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UKPiAtLS0KPiAgYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCArKysrCj4gIGFyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaSAgICAgICB8IDggKysrKysrKysKPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
