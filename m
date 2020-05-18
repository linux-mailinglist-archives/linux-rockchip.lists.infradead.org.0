Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D291D71AE
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 May 2020 09:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hRiYYb6Ydo8ZR1bbbvoW2nksTSqKBoMLG/+xVfnliU=; b=mO2vk8BXpga01S
	6vPvlvMRnU6oDOgq/LWUwUEysCw+srjggSyVBOJq2GFcsV2pVmwejMDmQxps9FVLW057u+bK8Re0w
	IildEYVu7H0Ql/KturxltuwgODsFT6r+esM1I8TC1qYovr8O0OJeyyAXuxYMSQD/IvWd04nlQDtoD
	/2w17D2V86qNa5k0pc0x59yLsqPAiQ4FZJOItAE0+v5KYr6uZ02gnKe3j/4bKkqayJkOBDjUEoZiP
	EubrHx8ugjET+xJAT3MXuBVhdgIc49GFTdFCGQINXzkQJSEowHAZvucH0WCRpJoiObMKDoW7f/3mi
	0iqVtKY419+VmpBlVFyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaa6L-0003y7-3Z; Mon, 18 May 2020 07:22:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaa6H-0003xH-Rr
 for linux-rockchip@lists.infradead.org; Mon, 18 May 2020 07:22:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id v5so7064744lfp.13
 for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2020 00:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
 b=H45b10GoSvrnbPb2a/o3lK9Nl0HuYne+YFGpSvMJiNjwcxbVxcZeeUrjPUQx7sXW+R
 hQWjYwS51Nsn9o3d6QmcnVszrfyH2pFc5Wjwa0dzvxsSdLHpcpLTJI/d6cGHheznDOWr
 aw+OrGy8tPVKae29pfSJi/RecDYQKtqV1KUlNJI2vPPJ4iide2fNvyqfk9HlxzuTBOnU
 EPQklZ2sqMCZL9m0Tj2/hWeJ/WdYq14P0TDpxlWB5tUtgZbtOshsuI5mqiPEJ0x89Eje
 unpR6vch5DGld+UnoJprw33lXuot+0VyLHHf+qLgbZnvm8/Lp/tDq/xbkMgZRftxIgaa
 3dyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
 b=KTMcGkPZBFaJpkMcYG6LWh2KN5SbW/YoNZGoXZPidj3OeEkAZWxnzIpwQqgARN5wsZ
 WBGZ+abnW4vo7Vk7FxDDCjFF9N45uqFc66TehSWOA6tiDaMxbe+O5ysGt8GsWZ1bZ4JH
 FuYM0L/05DB2Qyx+k9R9F4BFjDudupoI/qlWLQxp9aKZ5WXdKlxz5kZ+YTwNVHhnDS9D
 RuwnV7VecKMp5NWTEhTva/ZiNxHln1VwJ5FWAe3KOLlq34WzwHgyXLLUE7ohbySaHbFM
 NVJvBXdHBUy6VkF8El+vKoPN7e0M1RRfynFS2rcsKCNoARxeUbkW2RNLh+EzQP0qjTCt
 tfXA==
X-Gm-Message-State: AOAM531pAVvlxc7ZFQiXEvrO1dPupPKoNqn9+7PUa5dbCTHltm6dyBLy
 RfFwUmOKG+CdcKup7Ovwcgv+DZZknnMMDwJysiGnbw==
X-Google-Smtp-Source: ABdhPJwjBRm7gpLqIiY05Psy2U6dlWExnKINR/oAoQ5mkgDD5QtubFG19R6MFzkv42RekuXIOYC1qPLmFToR58V7Wmg=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr6307358lfn.21.1589786532265; 
 Mon, 18 May 2020 00:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200512203524.7317-1-jbx6244@gmail.com>
 <20200512203524.7317-3-jbx6244@gmail.com>
In-Reply-To: <20200512203524.7317-3-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:22:01 +0200
Message-ID: <CACRpkdaN4tMcsOmsERdtcwC+Cw6SjTtSENxNRjTOeMU9rdU+RA@mail.gmail.com>
Subject: Re: [PATCH 3/3] include: dt-bindings: rockchip: remove unused defines
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002213_899893_33476BAF 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so remove the unused defines in 'rockchip.h' to prevent
> that someone start using them again.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I think patch 1 & 3 needs to be applied to the Rockchip tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
