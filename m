Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06AC13B511
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Jan 2020 23:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWa17ruvq3jjuu+q+whjrW+yTvr4Wfwv5W2/syRl1rQ=; b=dgiaojCMpqj8yE
	zrLZ3wzpYdkIuVqq9MXPAVOrXI7G2JcEhE7nLNmQRXXqC89EHkh8jZiFUxMllpGL5nsQykzEjy7Va
	1tyoPbxVh1B4XoRmu2RIX7FNMCE/sBZvo5engVoDE3aQdvm7pr6iCmsr2IUPNXdkrcSRG7AXWPYUK
	xJSlZwepkvsGWWeL3oh5H13F0stPn0xHpUD55PU/GxcH5Svfvddim9TiggXNy2y9uEIj0RLGwQRtj
	FwGc781rT8TY+xP4TjGQee3e2Dpf6VlrDHBFJZp2r/kOAki38ryyBsyw99IwOEIGkH0/9SENXwEBj
	8WSkurk5yYyafLH/l/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irUKc-0006rm-7Z; Tue, 14 Jan 2020 22:06:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irUKP-0006k5-TP; Tue, 14 Jan 2020 22:06:30 +0000
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72EC02467E;
 Tue, 14 Jan 2020 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579039585;
 bh=ak2pDlNLJqO6I6B08zZGpFxARQfKyArhMmTzeALdBzg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cCHYW6a6nJENELdOdK6d5nUAFMYQgVeYuz0JQ2jjuOWRxbT6HzRipISp8KrAwsE/u
 F/vedVKRrWV1TGVEFP49MpODow/BWFG/HfxVyMOseoLizNfjTCK+IV0hg2gGnBtLiF
 agiqjC7Y7MER9MoUJUEyXAw7L8s6/5hGa5SBtf1A=
Received: by mail-qv1-f50.google.com with SMTP id n8so6441583qvg.11;
 Tue, 14 Jan 2020 14:06:25 -0800 (PST)
X-Gm-Message-State: APjAAAXNcD1VkzKUkoiJ6KHpduq4Y+pCSuNp8c25zkrXsyt6JuFX5cPb
 zBzW2nZ6PLiyGICUCqDR2yHN18GZ4o77UJ3L0A==
X-Google-Smtp-Source: APXvYqzGWrbxNauf9xa5MkJ+ERHGXWd3WsUXlRzV0Dnb14EolrJehn1vVApCKSXYdX1ws1nunVbJjQJrO0ev1wSrlWM=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr21746759qvu.136.1579039584558; 
 Tue, 14 Jan 2020 14:06:24 -0800 (PST)
MIME-Version: 1.0
References: <20200114213809.27166-1-jbx6244@gmail.com>
In-Reply-To: <20200114213809.27166-1-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 14 Jan 2020 16:06:13 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
Message-ID: <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: mmc: combine common mmc and
 dw-mshc properties
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_140625_970105_402B515F 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Combine the common properties for mmc and dw-mshc in
> mmc-controller-common.yaml

Commit messages should explain the why, not what.

AFAICT, the only reason is to not have a node name of 'mmc'. That's
entirely the reason why it is defined. Fix your node names to use the
standard name.



Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
