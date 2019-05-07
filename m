Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19B15DF9
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 09:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHOAyM/g/0lKy7xAmMwvb3dDO+gCevpe2HdkLE3zwho=; b=Fo/dhdHsx2QoTa
	cvqscypd4FirRjOqHQz4cE97AXoBPv5LQOZNQh2qKDdkr7K041tuQIAhEweYlrj46VkN/n4lg/Nr5
	GIbvm0ZldJxuPNwRVeWgh/oRPrscPRMSOMJjWAGcBXV0ZKbipiOYokjRuwGQ8+BQ3ade8azW/+pIH
	bIBTw1lfKe9/SGhGV/sKRLISyC14Tk4/eKT7Bv1r/HHIPEpr/Tg+pDj/LBhTEijpq3sBGuwSlnJcR
	zNyxqoG0MFN6qXp8PXwtnaEbxSZmH95PG3DrEAt880uSvNfUoOebScwDZulLj+bnVvx3fvAZuGf/L
	/fL07eCwT9Xk/NJcHvKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuMz-0002K9-3E; Tue, 07 May 2019 07:18:33 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuMv-0002Ja-Qp
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 07:18:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id e19so3604367iob.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 00:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qeUprlYeVur9qX1oRbBHjIoVQ5xeTmhLfbqHTzcYav4=;
 b=aDzhvKtnsIRaRAKZCXYok3AERleQmKucGn35bWRwQsME0sljMG6Wy4g0Eg1VUCM+DL
 4ABnUm4zbiK2DHmx14rDUatAu47mGMqR+eYvcWNijJCFW7lzARJuYRHryaJBySxwWBej
 ihcHak0GOkILz+zC1kHiPrndLnyFzNSBdKCC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qeUprlYeVur9qX1oRbBHjIoVQ5xeTmhLfbqHTzcYav4=;
 b=hIvFoTCM3ceSY/M+PAJ1pw6BRGl+Dk5BM/hpjJLDUYrfS/vIs26Tzrdk9MmzqBxbxe
 mcBqrHwHOTbH6B3vUisqVlWRTjbDUvdXmygUNKEWm0IKaUAonWTagsqR2n8M1avyPZFw
 rYgtMoQlQdpev9odGUKvBvGteitcT83wH6b0A+8J8pMBBKytLj0WdHCF9cDxVTmYzAMz
 WjeW9FRpHVyVi0LyApnFw3ePaO6IxolcpxUaq89tvG1pHKh1k4GKtCHKV7CKriJ04/tB
 EoTHjmWyTzuNhdTU52BrbOvhVDEOO9xkRAcVEURxf4U1bZitQyja4VjHEViMnRQW+NNt
 FQHw==
X-Gm-Message-State: APjAAAVQFg2qw6ybDo+zAkY2mSju0RNhRJGEfn2kekIcbbVfPxG7HLhi
 fEcbFspPpwfWOu4prUjZXMUo+fMA8dk9hBpeNoBGRQ==
X-Google-Smtp-Source: APXvYqwSxh3N3pgs0kgJgmVCys4LPR1HcdEQcD0Fmf7yVykz/emNnx+dK14senOOzA3EAJX7/Iv9U9sKFZzf4iUUFfc=
X-Received: by 2002:a5d:8d18:: with SMTP id p24mr21756159ioj.267.1557213508898; 
 Tue, 07 May 2019 00:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-5-jagan@amarulasolutions.com>
 <17edf8e7-9c00-21ab-b2a0-cc4c80e57f0c@rock-chips.com>
In-Reply-To: <17edf8e7-9c00-21ab-b2a0-cc4c80e57f0c@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 12:48:17 +0530
Message-ID: <CAMty3ZAgkFXJ0oE2Vvcz2SgOxS3tihGgTc8i3WJDitbQzc3=hQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/13] arm: rockchip: rk3399: Move common configs in
 Kconfig
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001830_033130_A29D0ED3 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tom Rini <trini@konsulko.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Tue, May 7, 2019 at 12:44 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Jagan,
>
>     I would like to merge this patch set, all the patches looks fine to me,
>
> though this patch need to be rebased and not sure if other patches follow

I have rebased this along with prior series on u-boot-rockchip/master,
may be I can send the next version to pick all smoothly. what do you
think?

>
> also need to do the rebase.
>
>     Philipp picks one of them(for Orangepi) in last PR, I think it would be
> better to get all the patches merged.

Agreed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
