Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696CB57C92
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 08:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvEp8cBQh/x+LTgYE8/hsXIrTX9FasdFTzKdaUofqnk=; b=GdglJyV0VJKTEW
	Bc1aLP+3JpI1hSiGaZc/Wkda7WypSpsajdq5QVlB1CsFMWyRbWG8syDR/tGC6tEeBldgj1ShIsaXp
	zMceu4yCzhqbWLZxC/LGkcu0qqXpWW3XSM6rbUb1Kg3oIclFk+hLIi3lXa1tkCJu2MptmNy3/GjJX
	liMslEwfBmqSSTHSWB/WEo5aohxlhLvST3Ky73ZXDSb2IFLUu/dlE2qEwS9IYj10rIKKLZB9MkOb+
	G0lZH4TC3NQOd4t8bCNho3tlNv7WvS8Jwt7nsWqTL85Ff9sRW3qP5s119pyCfihY9exEf8gH2a+zn
	fBOLazHK2/IyRxqos8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOJ9-0001M3-Ka; Thu, 27 Jun 2019 06:54:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO96-0006KM-AO
 for linux-rockchip@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IuI6M4VGf1cjQTUKZW+l4CbPnBlOyXj2+eIKebMch1k=; b=qqbcg6ncHRbR3La1LK2Kme/pE
 TC4qLBjyYZBfMt7FTrZLMdJ1hW/JnVzsspxKmu+NX7GVEyrUu9+oBp/fpnbHn2tjlqTrSPjwb1Q2Z
 bALzGGdxssa+MY3Rz6jSb22clVlVSoikJgWRfikdPXF5SQDegBwLXh4w0fL96l8NAoKtInnHnXFfn
 m6QC56zo2ZunWtGhlATmeJ5zaulb53aR73KhcK+0CyTKk9Hlz8ItXqCjqUyNgpRjMinyNEyeTBZ6p
 CMlKrsiqMYNXnWH1u3XMqjWyfCy5N6BrDefrYKNUGOXlgcEdUFuEmBI+DqHbDjVIEK+vc+wzMW8z3
 U2VlpK6Uw==;
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGs4-00036a-6m
 for linux-rockchip@lists.infradead.org; Wed, 26 Jun 2019 22:58:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id y72so58986pgd.8
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2019 15:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IuI6M4VGf1cjQTUKZW+l4CbPnBlOyXj2+eIKebMch1k=;
 b=PkX050BpppH3H/7xYIywyS+Db9gQLAlPfiWuw1cGsyQZ+YKibWRElZhD+84sVsUSU4
 1E/w5nwSOoby0+/SDXrA61D0g/IS1aMnxZCOMTDSwtiArIylZ2mxQdb7Hki56EuRiFRd
 DKOTP6SJn52T4RzoGRJhl5q9+Wn0GLrQzS178=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IuI6M4VGf1cjQTUKZW+l4CbPnBlOyXj2+eIKebMch1k=;
 b=dVTI4c2SAgkkvfkB3NCBOM59dAvWk6HSnmlSq1UkaAOkOIXeGcN7cfDjeGEnODro6f
 F7P/f0w03C1XUjHBfLeFCkBzlQjy0CKt+v5u49WAD+yffq4jJoiqeVh4t3MVNj7kCfut
 herrfo3iVWbskyG/0gBUEMCpK5eKAI57LMiUFWRety+KClj2Eurwt4Jm/zzlOzBq2ZtX
 R/nwd97Ww5tv7BSFYjQ4k4BJXtob9jIHImzw4EeC+T2oDXZmVAxjbjxn5kSnGfYxipro
 /J326wS9cE/EytZKylfIuaXwbT0yP9x2vpMBvyEkfusBOJbGFMT+R7iS/60/c/1slP+M
 0lfg==
X-Gm-Message-State: APjAAAUZdsLYEQYHkwE0K1xI8Mb1jHt1lga9UxHQcxcIbiWECrxd4YXl
 Nho1mSEvbnnx6fs2q1qZSXBRVQ==
X-Google-Smtp-Source: APXvYqyx8pJF4J/wTCH99KCJF8FrgEcnvbR4pUyscuGINJgi0EniQVKfjOWyJ2HNdG0cgwESpM13NA==
X-Received: by 2002:a17:90a:2385:: with SMTP id
 g5mr1954277pje.12.1561589786991; 
 Wed, 26 Jun 2019 15:56:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f88sm3487343pjg.5.2019.06.26.15.56.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 15:56:26 -0700 (PDT)
Date: Wed, 26 Jun 2019 15:56:24 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Message-ID: <20190626225624.GC137143@google.com>
References: <20190625222629.154619-1-mka@chromium.org>
 <2418036.tTYI8lUvN5@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2418036.tTYI8lUvN5@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, enric.balletbo@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 12:19:27AM +0200, Heiko Stuebner wrote:
> Hi Matthias,
> 
> Am Mittwoch, 26. Juni 2019, 00:26:28 CEST schrieb Matthias Kaehlcke:
> > The chromebook .dtsi file contains common settings for veyron
> > Chromebooks with eDP displays. Some veyron devices with a display
> > aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> > display related bits from the chromebook .dtsi into a separate file
> > to avoid redundant DT settings.
> > 
> > The new file is included from the chromebook .dtsi and can be
> > included by non-Chromebook devices with a display.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > This series is based on v5.3-armsoc/dts32 (f497ab6b4bb8 "ARM:
> > dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
> > veyron") plus the display timing patches from Doug:
> 
> the display-timing patches are still stuck on panel-review.
> 
> But while we wait for that to get resolved, you could also check if
> the veyron panels could use Enric's fanzy new automatic calculation
> of brightness-leves in the pwm-backlight driver, so that we possibly
> could get rid of the long table of levels.

We could get rid of the tables after "backlight: pwm_bl: Fix heuristic
to determine number of brightness levels"
(https://lore.kernel.org/patchwork/patch/1087809/) lands.

Ideally we would also have something like this series
https://lore.kernel.org/patchwork/project/lkml/list/?series=399607 ,
to provide userspace information about the brightness scale. Currently
Chrome OS would interpret Enric's table as being linear and adjust the
brightness slider incorrectly.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
