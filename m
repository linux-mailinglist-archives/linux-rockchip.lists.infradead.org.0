Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D399D7549A
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQFp5PmUz7tYpGGT7Sion0kwwg/E5WdHj1XEXYhHuPw=; b=hiMqPqdKRx/HR0
	qW5zdcfoPH+ELCwEPPhLrRBbpQGpU+9wJR3lMIdVQEA6cj8bMJrcDOGY//op8uzNBpBCXMEKhp7Ii
	JjP5FO3OsKHlYFxxxorbdzHGdAdheXO/urzVa3lzzDzVGNZWRJkWMx4z1LCIW/K7d7stPj/g3pcvS
	XcEmV6yXT0is3LFtybxH0NqCjdRzD+p7rTW8vuYOVGB/6pFhFwqtzlpTNncGRffgRFGzOsTfGFqmc
	lQjV2STwDtiGpBWAI9px9tLg9A1rq1dqc0SXNA8wN5AKsV7MrdKT+klDtVvug87lYRNCqtshXNi+a
	1eZ8J3PgJvDE+/eofbuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgvk-00016F-Jt; Thu, 25 Jul 2019 16:49:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgvH-0000pe-7i
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 16:48:57 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so23508218ioa.5
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
 b=Oq3bWQYZfePc311A34AbLZpfdLSyWQ9zAmOxY8w/LT5D3Z7amPYgg7slXVnLbaYT5s
 dApXuC+dvlXm4a7wKv0nZdbyayoNVDZ4t5PoK8tbVG3OE7LmMafdc1Ctd/dWKEzxKHln
 xwxF9Q7T9eZPyvnh7tT9vMxAjquvbNlDsV/PY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
 b=gbA8w1nAPnvWI4rjdvyHuU6F4uiYWJAQKBY3GrScElJBSdiRGZrCLh/op5yw7nYvom
 G00YgGd9uGNQJ2OGpRxpzXnGqR/YO6owm6cjw6wsjb3EBA1P9wKpgePcpx6eqxNYhpoz
 o03mJjppJ/S0vpmBOMBmX+fguCD9vw7eIc2Xf9FpisCoPbloh8x/swzZY+xVGQUahiZp
 98AbYPJVbQjiQFD/VktNdvPpHVHTpV1h+7BmCHfOTH/H2Qt8d5SSrHq4j5copYJiXHsw
 N6+5GVrZuOMBswvF7PUI4EW2n/PZ6kOFGOKHrR2wny/0T/6UjjpTrAKvbB5ZmVDR+vHy
 iSgw==
X-Gm-Message-State: APjAAAXB2Q0RZ52It22MaJn3iQfrWiRYYYfQcg7uf5/c5cZh5dMFw+9f
 IR6Sq/DKMMRu1efTtYag78f44nFmfW8=
X-Google-Smtp-Source: APXvYqzpb3z3xamPpAO47onboOAoqMwJCVsU9fs9aGyhvfoiRX/Kd9P938FPw9JSGBl8rDcHsueCBw==
X-Received: by 2002:a6b:8f93:: with SMTP id
 r141mr85149957iod.145.1564073334116; 
 Thu, 25 Jul 2019 09:48:54 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id b20sm40120586ios.44.2019.07.25.09.48.52
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:48:53 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id j6so23507983ioa.5
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
X-Received: by 2002:a02:ac03:: with SMTP id a3mr94891125jao.132.1564073332377; 
 Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-2-mka@chromium.org>
In-Reply-To: <20190725162642.250709-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 09:48:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094855_481529_29C3067D 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 25, 2019 at 9:26 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
>
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - allow MIT license
> - move pinctrl section to the bottom
>
> Changes in v2:
> - rebased on v5.4-armsoc/dts32 (0d19541e3b45)
> ---
>  .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +---------------
>  arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 124 ++++++++++++++++++
>  2 files changed, 125 insertions(+), 114 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
