Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44E120D90
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTGO9viRHeIRw9Zin7CWuVYa52R/BqTlB/etMZL0Yuk=; b=Xf/u54hE6W08E1
	OzdODPYGnDHsrNO+/WmrbO5xfNyrDWYl53B8+GfA9X+Bl6La3dM2XvPG+lOCm94yOhf1XHHd1jVp/
	klNu6mf2LYLXeuEegb5fyVe2L6U8h5qnulqRolq/QM4Dgn+JSt8qLCp4IQpFFUdCiZSQigK1XttXf
	yprE1JID4z3XDXT1CbEV0Z/n6usReIXI2oT7CZO6ZjFAzjAC+BC0kaouKytbez9PpjMoF0RwUbbIX
	nbLJ0SNSIUIT9OifbMbiEBhKqUfEcQEETcrNdJGeZ2gVsLH7enQQBTosVhXpbosmZDvD3BvO25C4M
	Kw3lUwOXTpZGxQH/mlNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJiZ-0000NU-JM; Thu, 16 May 2019 16:58:55 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJiQ-0000Dv-39
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 16:58:47 +0000
Received: by mail-ua1-x941.google.com with SMTP id 94so1569519uam.3
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
 b=KTu4I3iLkD6d25Qx/9ZfdJuiwwImY8tkog2XfJWMae7fnJz7hMQfsB3YluYGPWvkva
 W4oEQ+Mw86+nSDZlWZtIs7Vzh74xCnOKR7hFZCSSiAylCoIO5s+qZLGaqJKDS8QblmzJ
 7+AnU7kiJ3qf5MhmefdogpR3nFeT9Mrs0FqkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
 b=IVIy5PP/FhRmGMH/ETgxUPv3rgYv3DMYjlL/kX+BZWftfzImTU9uZctgpL7hp1Xzo8
 nRqDcEBwc3er8CKvERj0UKyvDFd7LKkgOAUo58WPsv+uwJJEv4C4RAHh7aIVjd950xeY
 f5+gN1L1qq+3utDkOYn6DnoNIMrSgbLzxwuTPG2qc7S31o60mxGomWk84kf1uyggPNEu
 sZKtTmfL1BIGUI2ETiS3cRgsUTTwvjA0AeHXrUujv1maO8/gFajOA7XSnFZMNXc86VUL
 DRA8RTrbCFEMw2DdEiahuSjiTtEjWD9B0ukjDpRM3Nfc+OERx6Z3xzsiV2lzV57o1LB1
 qWcQ==
X-Gm-Message-State: APjAAAXP27X6hlU6Rl6lPMnG39Q9WI0mtfPDABKoAAUoeIADICOtvmVO
 r0+Zr0OHVZ4Pjyf9Z6NtMmomhjEzSps=
X-Google-Smtp-Source: APXvYqyRXMdI0ZnUYlPJI7FaVZEM8iK5efDLZL4mYILiwsEN+PCKJXINepNS33z14TYhgPHsrcBncQ==
X-Received: by 2002:ab0:3117:: with SMTP id e23mr530409ual.102.1558025923733; 
 Thu, 16 May 2019 09:58:43 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com.
 [209.85.217.54])
 by smtp.gmail.com with ESMTPSA id j71sm2830965vsd.0.2019.05.16.09.58.42
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:58:42 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id o10so2750095vsp.12
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:58:42 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr17782417vsk.149.1558025921921; 
 Thu, 16 May 2019 09:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
 <20190516162942.154823-3-mka@chromium.org>
In-Reply-To: <20190516162942.154823-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:58:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for
 speedy to 80 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095846_131526_5BF1C392 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gUmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBH
UFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBzcGVlZHkKPiB0byA4MMKwQy4gVGhpcyBpcyB0aGUg
dmFsdWUgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhl
ICdvZmZpY2lhbCcga2VybmVsIGZvciBzcGVlZHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0g
YWRkIGVudHJ5IGF0IHBvc2l0aW9uIGluIGFscGhhYmV0aWNhbCBvcmRlcgo+IC0tLQo+ICBhcmNo
L2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMgfCA0ICsrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24g
PGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
