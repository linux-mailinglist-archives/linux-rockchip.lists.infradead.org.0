Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68BD19C488
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QxDc+8iMklsie1WweVyEWgfVOPHjTFFhvKhkYEZRBY=; b=aOG6xqHDfZ/ArS
	3PDuaL3eqosqnz2XBb5ZdMT2ggZ49bST46TUvTx5f7HSLSaJ95Rgg0Ha8sXUv0uk74mVcwLPUBrRz
	yw8OtX0dJ26djdCgTrlmwo9SgaVzeW/YPPkBw5Zn5RPQKFZkdPLXKvyLAaWcnpRafp5oDZFs0AJ76
	CgaVsfD6uJJWpnjKHeBBft9Str3UbOAg4IVJMqWHYIBGIc75Jwkg9dHWOm3XEtJtzuhAiUndi3xHO
	jC+u2aIP4jO4nu2F0epdyboUPEek4OOSAU4as/6qI8KP9uZvGJseIan3hknBZTw59jFt7EtyasPnq
	H8ZzVoP6bP056dXz1G0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK13e-0007XV-61; Thu, 02 Apr 2020 14:43:02 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK13a-0007QR-HH
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:43:00 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48tQlg72Rhz1rx8R;
 Thu,  2 Apr 2020 16:42:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48tQlg6GBmz1qv4M;
 Thu,  2 Apr 2020 16:42:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id cwsbNBYgvbon; Thu,  2 Apr 2020 16:42:54 +0200 (CEST)
X-Auth-Info: 1RiFS1zHl81fC+DM6AhuYvak1wPZNONbNemcv10hnhQ=
Received: from crub (pD95F11D0.dip0.t-ipconnect.de [217.95.17.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  2 Apr 2020 16:42:54 +0200 (CEST)
Date: Thu, 2 Apr 2020 16:42:54 +0200
From: Anatolij Gustschin <agust@denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 0/5] rockchip: rk3399: Fix HDMI out
Message-ID: <20200402164254.601503b2@crub>
In-Reply-To: <4e11274d-b166-1e41-83a6-8bf647f96c84@rock-chips.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402155616.013f6bf8@crub>
 <4e11274d-b166-1e41-83a6-8bf647f96c84@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_074258_721814_03F97B5D 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Thu, 2 Apr 2020 22:28:53 +0800
Kever Yang kever.yang@rock-chips.com wrote:
...
> > Series applied to u-boot-video/video-fixes-v2020.04, thanks!  
> 
> I was about to apply these patches, and under travis build now.
> 
> It's also OK for these patches to merge into u-boot-video.

I'm build testing the series [1] and will submit a pull request to
Tom.

[1] https://gitlab.denx.de/u-boot/custodians/u-boot-video/pipelines/2606

--
Anatolij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
