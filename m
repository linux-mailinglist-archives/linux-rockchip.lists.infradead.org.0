Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431013CAB2
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 14:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uW692FTFIMKHtUHFFSf4RGOGM71BASDwZHoSn74yda4=; b=WRrqNo8i3C05KV
	mdeRCqQDOcYZMKr1LmM6W8/d81ac/pBONqJim2odnDWznWrTY/q7iM5GB+cC1ij7sUcDCQcPRPaBJ
	w5Z8nx2bko/x7aA6dhxzpkO70JQ9+5TH7Tv/Osq/zBHLLA8Pf6z1tagNAn0ikf9pBo1Rp43OKPc6t
	WzpjrSF4h8hQVzwfKMjPknYXPwKGJSBAlnxtiza/l8dGqX+l8DGIBEXRlVWl9BTMs7apUDJAOQJmD
	B5AoCpcekVs1EZqt55cIEfEz/81v9OFIajrB1Acb75bUnFPPbfVfehHzj9I8xLGCXOqrBn65WsLfE
	PEzncobxwq1iQP3lR/tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafXb-00011s-GV; Tue, 11 Jun 2019 12:06:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafXW-000117-P5
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 12:06:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so11358403ljj.3
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 05:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZXirDOut9vTqPwIy2+NlkcxYvoX0FlWKfU61yeOlXc=;
 b=YnbqCKr3jMbW1jUhQ7uQsXIvK/YeDj1P1hgI7tJ+yc2M760ar+rV2fnGcMxMFQx1wT
 FiO54DDsoHx/hhRaCgxZ2iqXcQKCL8fvsP8wrc4ZlWO47rqYOxJV6vilfqgBx9UaGc19
 dusFW2VjVyYmmklpJOfiOsnPGkzLf8G4gxxQDFLdU2qryMV3Dp23bEQWkd06axjVSiXG
 ducOaewG12zHLktAQRNFRqdfSdzNduv62pfY/+nKDqAcU+Ks3v/7V+8z3F6IOcsKN0Kl
 +u7KB2SOYLU957Xzo3/dkqbsKM9+yCMXUHiGWah/opMPIJTsTSPnF4iDDTXkDov3Ulvu
 u+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZXirDOut9vTqPwIy2+NlkcxYvoX0FlWKfU61yeOlXc=;
 b=JB2ciRbIAvfhB1li7G86CnCgtvXJgKGvUSA9XbBWxbCinbYh9Z4HeWABXtHbV89GZ1
 w35KC+wQjHkJkGXHQTV5T/U2agp0gnVWLNNMWVU9d5Xov6ZwbcfZAQHdBnW2ExsDARqc
 UoJeaesKFShPC/y5qL8HzV9NRRY1do7VCilj8uMuxWmHOIcYKL/++UR7vcn1gVbCfFp+
 vLLf6+rren0IA79z1w0wsqKtEAD5SxSBS/sChL4cgw6BKStNCcMdTj6cKegQQMv/GDoW
 iVDxHpvb8eWHnZLSWXP5sLX6SyWq3mg53oGn2Zu8L/ramy9KdMNxqJ580fyj1vnwzgtG
 Kxjw==
X-Gm-Message-State: APjAAAUo+dyuIr/ukCRC3T5Qhw986y59jigDJxl/+YBC0lMOxJVVNXzx
 yI3L1MW7fPgWgqcm1aeWZzldafzaBSIbeaZUACEgdpccghI=
X-Google-Smtp-Source: APXvYqyNbKW8MLdfiFF2bBbCPn6JlewYUZ4cSvk+vV6vxfgRu10IAU5IRNihSdhfyXPovuQjMfLgF6htx5YUpU9HpCk=
X-Received: by 2002:a2e:a318:: with SMTP id l24mr27777904lje.36.1560254767023; 
 Tue, 11 Jun 2019 05:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190610175234.196844-1-dianders@chromium.org>
 <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
In-Reply-To: <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
From: Erico Nunes <nunes.erico@gmail.com>
Date: Tue, 11 Jun 2019 14:05:55 +0200
Message-ID: <CAK4VdL0jph-LzkRai=6nLahgrvG0cFNt5N3GNGjKAE-G0jc38A@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Fix unwedge crash when no
 pinctrl entries
To: Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_050610_842317_BB7D8B15 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nunes.erico[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, Jonas Karlman <jonas@kwiboo.se>,
 Douglas Anderson <dianders@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:51 PM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, Jun 10, 2019 at 1:52 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > In commit 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge"
> > for ddc bus") I stupidly used IS_ERR() to check for whether we have an
> > "unwedge" pinctrl state even though on most flows through the driver
> > the unwedge state will just be NULL.
> >
> > Fix it so that we consistently use NULL for no unwedge state.
> >
> > Fixes: 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus")
> > Reported-by: Erico Nunes <nunes.erico@gmail.com>
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> Thanks Erico for the report, and Doug for fixing this up quickly, I've applied
> the patch to drm-misc-next

It does fix the issue. Thank you for the quick fix.

Erico

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
