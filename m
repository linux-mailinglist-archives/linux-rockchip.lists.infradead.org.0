Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7E425A01
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 23:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIfrLSGLLJMjImek6aYpCj1kUmKrDSUpsBUYUaF3kNM=; b=HmGsdwbCiCE26N
	GLMCf0QYHfIYqatHN0Nq2YSVOwlQbOfHL/WDWmVqTRAE9Skf/wndlVJtHaU99tfsnAdInAZIvmMoQ
	/NE6nl+Kaa+ZRl/pvRgG/9jYGcxwe6huX2fLrFwrDvT/A2t1hITSsU8cFPsW2o/Ggtz074sBBFCqd
	m8nP7Q6jmq6pYO698tD5GRY1eZtxS8pIHBx1a5/8oQ9LiiwYYaQwsyK74kDMFqvyOUQRfTCvk0E86
	wdvSWOLhHxQ3TJScC9UJu4f3UdqepEEAjOlEpij33uyUrQno/zislQCP6gsnJTNrtBtcsvPzWNua1
	Gjcs6nPj6UJQzR7l8pmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCP1-0003eh-By; Tue, 21 May 2019 21:34:31 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCOy-0003dl-3E
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 21:34:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so9051867plr.3
 for <linux-rockchip@lists.infradead.org>; Tue, 21 May 2019 14:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
 b=Y0wLmu+PpiLo7vUy+T1dLKysSylXSg7NwAOmGwX9MPYG07Y+1uOVcznI5UzVOu0hCF
 p2wF+V53lMgvx/uZ2rLt/OkiKtI0zDZRIR8kqkWYxre5gGeEgxBkUU0sFg0V0dkCJFmA
 Lu3AzdAwwDLllUxNxExJGK/YFL3iCRzH90A5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
 b=kad2XaMmo4y9fVdb9uKYRf+RY+AEWISXX38cWGKhGprstQ7j37h8OufbB7hYb6FHiV
 yEc5sWGlCtYQHqDb6YahDQPb2nkgR+aRy9FSHIANlKWsh70YDzT9Cd1aL1tmjfPKDE7O
 MswjOqmDMEtTkowBs3h4BUu0PxV4TqVO6+ktXqh4Z+QBWwzGBA4nratBduwjSq3UuLdT
 yqPY+l69FjAlUtS5kQBGTyGQ++sGaVpEzjWraTiwJ+YBg60gItQkr+MhOoX5b+KLNCo3
 q7Yz/vx7kc7aYlJtbO/cPyPsD6rFKQuTl14YQP+Xj2R3xclqDdZmBaCyN68bnO49njpi
 m0NQ==
X-Gm-Message-State: APjAAAUicv49MvjicsfhGE0NHQzw7+ZKFu4nGUEoit3yloxtNmV9jVWe
 dpp0I8vxtrV31drzxFI463Hdmg==
X-Google-Smtp-Source: APXvYqzihHia+iUnsOd86KRdycld+FsIGTxqXQCnCFsb55jp0SddgA52ec+bov96FU2MF9EkB9uLWQ==
X-Received: by 2002:a17:902:21:: with SMTP id
 30mr69540871pla.302.1558474466758; 
 Tue, 21 May 2019 14:34:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 1sm24868945pfn.165.2019.05.21.14.34.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 14:34:26 -0700 (PDT)
Date: Tue, 21 May 2019 14:34:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Add pin names for
 rk3288-veyron-minnie
Message-ID: <20190521213425.GJ40515@google.com>
References: <20190521203215.234898-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521203215.234898-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_143428_139565_020149B3 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 01:32:14PM -0700, Douglas Anderson wrote:
> We can now use the "gpio-line-names" property to provide the names for
> all the pins on a board.  Let's use this to provide the names for all
> the pins on rk3288-veyron-minnie.
> 
> In general the names here come straight from the schematic.  That
> means even if the schematic name is weird / doesn't have consistent
> naming conventions / has typos I still haven't made any changes.
> 
> The exception here is for two pins: the recovery switch and the write
> protect detection pin.  These two pins need to have standardized names
> since crossystem (a Chrome OS tool) uses these names to query the
> pins.  In downstream kernels crossystem used an out-of-tree driver to
> do this but it has now been moved to the gpiod API and needs the
> standardized names.
> 
> It's expected that other rk3288-veyron boards will get similar patches
> shortly.
> 
> NOTE: I have sorted the "gpio" section to be next to the "pinctrl"
> section since it seems to logically make the most sense there.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
