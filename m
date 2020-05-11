Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405521CD43C
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 10:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZnErxBdOfLRW4EdaSYcCdN4+OUlymBwZVp41b8Q2Zs=; b=I8E2rXMOXjzta6
	48gmEh2hQWAFW7hBGwJcj5CPJBUs8AemlPgIbkmDj4y0v5HvaUuGzvbe5PTxUDgX8vuBHY8ICSKu/
	pXrFLQv6WjR8JQOHnM5q7VDvjuHGKPKQH6f2ytzvh/yPnQgFQjPwAqh3qJbubp2zJdKPz9XtWC2QL
	PAFMyTYZx1qUy6JGgHsu32ewcpaYmyGG7v9HV2DlusAwEa+DmjiaiN1RFncDHldNGgsz6gG8XczJO
	Jktq2g6IijNUwrlI7xLsWlLhUJX2GChNpUrcThoMjZnrjI/HA7CygJAqec6JuPoeI78hl2Rbj3PcM
	Xuy9PDapKvfsixvBx06w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY48u-0007Hn-NQ; Mon, 11 May 2020 08:50:32 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY48s-0007HS-HL
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 08:50:31 +0000
Received: by mail-ed1-x541.google.com with SMTP id e10so532663edq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2020 01:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JPU41Uh5QVHxBV/u9783TgT0QckjdvgbSB5sX9+d5g4=;
 b=nQLOdCCnFSu7rS7BR5G4SP+SkBD2s/B9AMpl6ASbhbPEty+9qcH8cm6FGZyU1Z5FrZ
 Z5fvr8NE4Kaad2oyH0gogypMI7/TvnAZBH2ka5hHJg36EMp8YVpskmaYaNZqf3F2Fqlm
 K+PsF/4BDahWFDJAAxrlaxy8nj1AIlrgCNSdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JPU41Uh5QVHxBV/u9783TgT0QckjdvgbSB5sX9+d5g4=;
 b=NMePi5Kd3Fb5HUK4I68SJmGT/E7Msu0UoPzg91sqLMj/yl7XoJQzdXXDACldI7AkfE
 kOTflNMY3KmtLXI46jT7BT9sJ9fLzSY6+kHnmaquzwlpHi9eoe5MM8qyWQz9BG5RFPeE
 pXR7Pz82CIL8/w5wzEpqyGPCdCPQ/LQ+F5ZZ1sK8u1xPuvElnwlQi+nsLkXsyfwGmKgQ
 cHFF2oSfX9x7wl4DqOnO+9ch1hLK9qZLj6iVtgcVQDskAYTDs3G1k7W5I6SA+ig4BfUe
 OTz+tWs1c29v6H5/g8PuXhlcW5WyugIHXMIvulTflVCwC33XhgIFhm8JJ8O9RKXPmvyL
 TK4A==
X-Gm-Message-State: AGi0PubH0jWXCkiSbtQvwRp4ogS9iFm27ZJpfNtkBCi5F/zIYvrNM4G6
 WVmc6rbxYTSxhfu/V9/OBH6k0Z6A6NS+VyyPgowibg==
X-Google-Smtp-Source: APiQypIHChW/zVnu0ajZs8TncVhHrYVyqNi/XmBEFHr4v7D5OfZEGRltHhECK48VOKpdIkQOrYl4TZaOnr9zvQX6bDM=
X-Received: by 2002:a50:e80a:: with SMTP id e10mr12526841edn.204.1589187028900; 
 Mon, 11 May 2020 01:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075520.26557-1-frank.wang@rock-chips.com>
 <20200511075520.26557-4-frank.wang@rock-chips.com>
In-Reply-To: <20200511075520.26557-4-frank.wang@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 11 May 2020 14:20:17 +0530
Message-ID: <CAMty3ZDw0vUeNVAu4VxO2pEUaoTwrfEwKfFdzogWWthpvVZ4Dw@mail.gmail.com>
Subject: Re: [PATCH v4 08/16] usb: dwc3: add dis_u2_freeclk_exists_quirk
To: Frank Wang <frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_015030_574784_62325DCE 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Belisko Marek <marek.belisko@gmail.com>, Simon Glass <sjg@chromium.org>,
 jianing.ren@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 William Wu <william.wu@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, wmc@rock-chips.com,
 chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 1:25 PM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> Add a quirk to clear the GUSB2PHYCFG.U2_FREECLK_EXISTS bit,
> which specifies whether the USB2.0 PHY provides a free-running
> PHY clock, which is active when the clock control input is active.
>
> Refer to commit 27f83eeb6b42("usb: dwc3: add dis_u2_freeclk_exists_quirk")
> in Linux Rockchip Kernel.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # roc-rk3399-pc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
