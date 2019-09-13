Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48037B2185
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 16:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iSpN3MyiVyKJGAIXJh7OYhTAzBp7hLjXjqkPftDPVI=; b=EdFbFCWqx5YBeh
	JOYalAmyQMO2CtLNuAAtv+lwiWFEKSA+Q9ETLFGDXc9JY4Sbhp+94TBCfbMSiftpLKifA2TuVKVHR
	IR2ATR7wePaplwbGEhPgd+lVbN5eaKaVqm4QCnetfURN6cgJC4UkBcavJeWoQTSK/Ul6viqAQ0XUl
	fqLK8xx/Hx/QGzRxnN35WDsb2x9z9d4n+ktcV2dqf4G2XmhRzlhCEfgqjl0f3DakSfwP+v1FaeXvu
	wE3G0x/DmYcrAhotk0tUtTmPfwILhzJwy9za8fF/RKJ4knZ0K28EYH3G8giyAyopSo0uImQT0hL26
	/nXutJQ965QO4rOCWfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8m8t-0006aP-5V; Fri, 13 Sep 2019 14:01:43 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8m8n-0006Zy-S7
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 14:01:40 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46VHP70w8Kz1rJh3;
 Fri, 13 Sep 2019 16:01:31 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46VHP66wDvz1qqkv;
 Fri, 13 Sep 2019 16:01:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id O5kZ_Iqtw6X5; Fri, 13 Sep 2019 16:01:29 +0200 (CEST)
X-Auth-Info: Z3NcuCWPC/kpHOVJ2j51bkVpJcyR/oINPVYYQf/OzIY=
Received: from crub (p54833695.dip0.t-ipconnect.de [84.131.54.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 13 Sep 2019 16:01:29 +0200 (CEST)
Date: Fri, 13 Sep 2019 16:01:29 +0200
From: Anatolij Gustschin <agust@denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
Message-ID: <20190913160129.0cc8bc99@crub>
In-Reply-To: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_070138_288047_BA54D239 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,

On Fri, 13 Sep 2019 08:19:47 +0530
Jagan Teki jagan@amarulasolutions.com wrote:
...
> Any inputs?

Try to input "setenv stdout serial" command on the serial console.
There might be a chance that stdout/stdin has switched to the
video console and the output proceeds there. If the HDMI display
shows nothing, it appears like a hang.
 
--
Anatolij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
