Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D894051B5D
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Jun 2019 21:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WavdDAyi+LIiBZRIee/xtaTNvmi0W6LOZegxyaTg19U=; b=jpK/BjG/MULeQG
	8wqi8/1e+qQZHYv7YYvroV7Jx1r+GOo7eGxmicspn4I82cpo3LuK6sVeukNiafK86XHda8T3xR6kF
	NijzmqVqxL4F2QO8+qmWIi9VSTDCMgDphDdW2yMSqZ1rf1nGhgCzw2fmBmxOLpXF4wVolskO49HPJ
	AIa/QtjQ6Yh1ZY5RMFsoipf3MCbyvaw/cuKsLxOs+WPzU1+rHxxc+jhYEi6m5VlZTJlvdAs3IRje4
	csn1odspkgheQbeIju8qEjFs1OdnUzKRrBVAT+VgI1Rj1C7Ylv5Cls7d227k12DWJif0T0hD9d0Vi
	ppARZmTql03ajC27iz2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUbJ-0006p8-ER; Mon, 24 Jun 2019 19:26:01 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUbF-0006og-53
 for linux-rockchip@lists.infradead.org; Mon, 24 Jun 2019 19:25:58 +0000
Received: by mail-io1-xd43.google.com with SMTP id e3so82762ioc.12
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 12:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=46YubdxCxrFPh8KrDchM0Ty2p47WTPPMVanoBQz+N5I=;
 b=WapHHi8N2f4HLGXe8Azqgnk2rXsYnSSwWeXoyTGoqptEniMQ7RI34LHdkfRxx+PTYJ
 6q8PlKhv4L+QPsNZCCEMml8wD0fIpbl5OiXhrEU0oePfqE5PupxtN+Plt9pm45DyQEdT
 xLv0d4d/GDSlQZxVi/VWkz/v0k08TuKOrnfCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=46YubdxCxrFPh8KrDchM0Ty2p47WTPPMVanoBQz+N5I=;
 b=byBzFZmwBIKfWNefmU0lMoPBo/Bjsn7u2ykK/vEDKXHfkLD2809S7orWnZ551Lq2Uy
 9bbqmQbf6zjejtPS3h1mM0R6a44/YKCQbqFEKzEEX2cql0Ok1UpbImYhj9lI86r2ot8N
 kuCHoUnIdHLorWpqe4bMrI+HgE7kYZqzi60+0Uumamp05XsEmwRBCuGb6P0DC2rbHki2
 rv6p1OOOFVuNkVTTWR9CGc9gSStn4r5YxMXMmqhDLeHoiMdU8eVE5uPGmPaTxDhpsHwZ
 M46EQe54e0JCuUYRMn0UvkrzonISzoDrpw1Z1RjRnJccI7nWtTWUaPKb5sfwK7meVvWv
 +LPA==
X-Gm-Message-State: APjAAAXwswYipvgIyh+YieECw5esqBjnsvhLKO/h2eBUMm0rtTAV4hjE
 EHj8VoS+scmcInJd3lU003+pi99ZFzo=
X-Google-Smtp-Source: APXvYqzPbOd98ZgUBxYxVR/fcJ3saARqwqncNxvxKZ5/eEDfleAELMz3/EDYuwnFBKp3d/HvScZOLQ==
X-Received: by 2002:a5e:820a:: with SMTP id l10mr38932332iom.283.1561404351737; 
 Mon, 24 Jun 2019 12:25:51 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id x22sm13612441iob.84.2019.06.24.12.25.49
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 12:25:50 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id m24so862928ioo.2
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 12:25:49 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr14713662jam.127.1561404342590; 
 Mon, 24 Jun 2019 12:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <20190621211346.1324-2-ezequiel@collabora.com>
In-Reply-To: <20190621211346.1324-2-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Jun 2019 12:25:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UO8S_MHPKvpu-Uc1pTAv2NN_hf+U6_HCntRU0hzGQtWw@mail.gmail.com>
Message-ID: <CAD=FV=UO8S_MHPKvpu-Uc1pTAv2NN_hf+U6_HCntRU0hzGQtWw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: document VOP gamma
 LUT address
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_122557_215929_DDD7F5A6 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 21, 2019 at 2:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add the register specifier description for an
> optional gamma LUT address.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * Drop reg-names, suggested by Doug.
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-vop.txt   | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
