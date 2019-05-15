Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01D11FA30
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZwJLszhTH17k+3PfxO8J6fBFZtNdaf4TGMwWMo39FA=; b=UFkShWM5Om24+T
	3zbhGOxHFpLwdnumZGp40zpiELwKHMPJGzOeWGmQQspMTZYCEuZBg08leVQy1BGfJeSV2cF/Gbut2
	/LPgFLOBh/roOnsoYccNcVvUMfVcdjNBWYZZcFPLbhx2V62yfsygPgSLUIHtroEHVhNRdWPXlDtbj
	Q2T/i6XR7Gk69YoiyIx6e6bYWUhhis2Mo7JfPd6au9NpmqOAD4sjc6SooCB9g5bb/Z4FajR/CwyKG
	HAN00PRbX6FPoLgiiSEVp5qXrrQtepxqItvx65XeXsbKbNQdqZBOkWz0j6vkyD24J7hJIJFwm0lZ8
	xtAe/i26/JzqZU6AgFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQysk-0002ke-Vt; Wed, 15 May 2019 18:44:03 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQysb-0002ZK-Oy
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:43:55 +0000
Received: by mail-vk1-xa41.google.com with SMTP id v69so307619vke.0
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3xAR9pN5InwiER09ljeYKEHWdfzCaHDHyTua6zX9tIs=;
 b=E9vPofboNKcy0FTkvpv3g/b9WDCcxyg+n3xLdnsOiOs2BDOldqtgH7ArPscDExXX0n
 GrzaTXoe/AzxIS0mIgOsDEk7BkbsJL2kuG0lJaj7BHIjjo2Zun1ez1IN4k8qlwFeoNqA
 k8fVPBfuKl9HBnvUOH+lzUb1Yjr12oKGw78uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3xAR9pN5InwiER09ljeYKEHWdfzCaHDHyTua6zX9tIs=;
 b=ZyPs2N4+FVdJIcq35PBSq5mXpkfYT/7l2j7UaoalYbEG3Xw3y/+KAzJuQSM8p4n7YS
 Sq6Tdf1eaN9lOOThFRSa/LemmMFWz1iN/KfWVACVOhZuwHaeD2e3XyUiBMHZ3vfvVbdp
 q+JRhM8m64Jq87uqkYGezyfH3HAGkUL4uTev80GM0UQPVpPMRSvAJnNDF4tx1HjidNqR
 3z89c7PFLTbWmjiVL0PLU/q2WjiVshQ7/feUFELtRQjglMBhmwyUzF4buMxEZcFPhSAb
 oBnaBkdIjfRjQUmWcdYRuMkhkfEXtVpjZT9nZZsVwh0LQPTg/veuiNqTNx+RBNaa7VG+
 +Q3w==
X-Gm-Message-State: APjAAAVtCTR17pQ4Blv+ZsYTlarBmKeZSkG2c9HkVl39owPkyUP3wGTL
 FaGDcXJVpd3dRIWlazLpERrNMofROec=
X-Google-Smtp-Source: APXvYqyc8BIkPN/v06Ih7/C9bcphOX2gE067WE/3bY0TKrcZKyGYwYCj6Uo2b/f0Wa5HjdFSMdrZ8A==
X-Received: by 2002:a1f:2915:: with SMTP id p21mr19924409vkp.52.1557945832795; 
 Wed, 15 May 2019 11:43:52 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com.
 [209.85.217.45])
 by smtp.gmail.com with ESMTPSA id 5sm924624vsq.12.2019.05.15.11.43.52
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:43:52 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id j184so579023vsd.11
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:43:52 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr14360313vsk.149.1557945406002; 
 Wed, 15 May 2019 11:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-2-dianders@chromium.org>
 <20190515182038.GV17077@art_vandelay>
In-Reply-To: <20190515182038.GV17077@art_vandelay>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:36:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
Message-ID: <CAD=FV=WP-rFDAR28oZg+9DcrXbaYPjFCAD-dV1VR3-3_XDs-3A@mail.gmail.com>
Subject: Re: [PATCH 2/5] drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc
 bus
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_114353_811799_8542AA35 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 11:20 AM Sean Paul <sean@poorly.run> wrote:

> > +                     if (IS_ERR(hdmi->default_state) &&
> > +                         !IS_ERR(hdmi->unwedge_state)) {
> > +                             dev_warn(dev,
> > +                                      "Unwedge requires default pinctrl\n");
>
> Can you downgrade this message to info or dbg? Given how rare this issue is, we
> probably don't want to spam everyone who is happily using dw-hdmi.

I don't think it will spam anyone, will it?  It will only spam if you
_do_ specify an unwedge state and you _don't_ specify a default state.
This seems like something you'd want a pretty serious warning about
because it meant that you wanted to use unwedge but you didn't specify
it properly.


> Reviewed-by: Sean Paul <sean@poorly.run>

Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
