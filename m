Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF95B131AC3
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 22:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIS7AugYcuHQX7yfWjdxDEEKIH+YCadokA1dsq+FFbE=; b=GwKQaTs9pl2GKu
	4vmL7cZpJu19EvgjC3CGZNAwJYu8AD6GFfxMRClziUYfDVlzFo4ygXN00Nym18xFy2OM95tdPSA3G
	dLZorUjkP/PLRqQET0rR1BjHkab7fXO/RcFmLZ7Qf7usimuJXB1lpSakE6xC181bBN6NjI+BmpIwN
	O8QC41ypHVJ/zfxkxacjD6Tl0NeOXBGqVg7AAIn3ZvjdUC0oIr3EBADaQ5ctIRMJoyccte2iQx9hx
	sf0hDUbpWfsQIQ9fz+uddAy84kOeVsw50aNIkml/IGoNDp3tN22zhjM/J0VMSQzrK/kzZNxXk+9O2
	+lQw6PHIsWsONP6xZ8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaJz-0005Jo-QW; Mon, 06 Jan 2020 21:53:59 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaJw-0005IY-3C
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 21:53:57 +0000
Received: by mail-ua1-x942.google.com with SMTP id 1so17714455uao.1
 for <linux-rockchip@lists.infradead.org>; Mon, 06 Jan 2020 13:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faKcBWRoBE2UlX7M22RMok2qsMWbJzCtmjkdjEhBadM=;
 b=KvRZwXcjreqaUPQ8TQS+8WGmX5JXgVz7Aa9cosBD9uIqp73RCLi8IaddTYv+Bb9+h7
 GG8wLl5227sVwjU/+vyr0VolH7MIFadz+ccCHeWYZfBVvNx1dQAAE2/51+k1bF87UHvw
 VrZJS+oLe9imzSxxt+SDyBB4xP9x9UU2clpSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faKcBWRoBE2UlX7M22RMok2qsMWbJzCtmjkdjEhBadM=;
 b=qayJW7P1GnYIDvIgAU9viAP5NdNwOXD1Ble+UHyJ845Qd4qlVEdH5u7QAs3SID5K2i
 DP+ygDyxVZzw5idZQA/8CqmXc0sGfOuItjEeFTYnThYe6tl5xGYoTqLS0r66/Tb2LKUG
 frl7emyKyFSt2mfzfs8DmedqjMQeyywmZEwq2TcvlrqaA488C50lfn3XKjebxYXG82Ky
 9Rz4M28maVG4Q/CMe9se6rEMDf2VDZgFFxJ1iNMY7Q14PJaHPuKrOUvd0ewEVLiR+sY1
 Wc0/+EkfikK/S2mKu/sYLd51HsHugZYhyLkTlHc5GIEDE1HMuIqa0ItAvcNM2jqgVGRp
 n9jA==
X-Gm-Message-State: APjAAAWp8rxkus/OmUTLFDp3cBAk4PziacOmrU1UEh/eeWiw5YnIslLs
 lRz+V/2n+wQk0BCBVmE/bBDIDJ/JleE=
X-Google-Smtp-Source: APXvYqyo+0hf6fvq9wmEjB2Amjfuj5a7yXtcAAHYjz+sAL5QR0gMWmsCSfkG/D75SC2ApeAHIFweIQ==
X-Received: by 2002:ab0:728b:: with SMTP id w11mr43758337uao.1.1578347634022; 
 Mon, 06 Jan 2020 13:53:54 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com.
 [209.85.221.177])
 by smtp.gmail.com with ESMTPSA id v85sm18571689vkd.8.2020.01.06.13.53.53
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 13:53:53 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id u6so12889445vkn.13
 for <linux-rockchip@lists.infradead.org>; Mon, 06 Jan 2020 13:53:53 -0800 (PST)
X-Received: by 2002:a1f:2197:: with SMTP id h145mr55322972vkh.75.1578347632921; 
 Mon, 06 Jan 2020 13:53:52 -0800 (PST)
MIME-Version: 1.0
References: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
In-Reply-To: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Jan 2020 13:53:41 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WcpjiVQ6zNN8fO4ZUCTr6GZkcPXjMW1hq8fvif6_QBpw@mail.gmail.com>
Message-ID: <CAD=FV=WcpjiVQ6zNN8fO4ZUCTr6GZkcPXjMW1hq8fvif6_QBpw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on
 veyron fievel/tiger
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135356_132541_37302E60 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Jan 6, 2020 at 1:52 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The flash write protect pin is currently named 'FW_WP_AP', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'AP_FLASH_WP_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-fievel.dts | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
