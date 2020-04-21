Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770A01B2888
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 15:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7iddU1BHbiTw1FZVvDDOUtsbHew/vOmRykDj0xgCSc=; b=H0SDShSUfBd2iR
	ZxQBMo6eUPsfyiQimLn8FMkVKsKaT8JzrUGVRz7MmswnH33PQVmgiiFHMHCWrH76zqFRYGxObemeE
	DfHgwAi+xelGQx2ym2FWRHtEb3cPWi+ubJgrAhRDfWfOZwTGVQRoNJ7I0Z/DlvFsL+5gattOGZS4W
	kNReD+gO/91TnFPdg66wzNjDfwyGwRd2qJcFXIeSgi7ki9rjKP5Vo9xIdf3GpqBvereGtTdJMsNeR
	nmFmFBHr6w9MB6poIkh86HErkjK8lF04AHBnWyCCBagrEGsvPahUMPyCC1EVKe9Og0DXRf1Rzj53E
	b0snhtmFLkLNdgUvXbeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtKS-00061g-QA; Tue, 21 Apr 2020 13:52:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtKP-00060G-Dk
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 13:52:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 6D72F2A174F
Message-ID: <93a4663d03046abd984382f898de15ad2a97cd4e.camel@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Johan Jonker <jbx6244@gmail.com>, 
 heiko@sntech.de
Date: Tue, 21 Apr 2020 10:52:33 -0300
In-Reply-To: <30717aac-f589-ffbd-aefb-07c2934f7a2e@xs4all.nl>
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
 <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
 <30717aac-f589-ffbd-aefb-07c2934f7a2e@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_065245_598957_D5269DA7 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2020-04-21 at 15:44 +0200, Hans Verkuil wrote:
> On 21/04/2020 15:19, Johan Jonker wrote:
> > Hi,
> > 
> > Question for the media maintainers Hans & Co. :
> > 
> > What's nxp,imx8mq-vpu.yaml doing under rga?
> > Why is rockchip-vpu.yaml inserted under rga instead of vpu?
> 
> That's clearly wrong. Probably my fault when trying to resolve
> a conflict.
> 
> Ezequiel, can you make a patch fixing this? It's probably a good
> idea if you double-check these entries to make sure I didn't inadvertently
> introduce more mistakes.
> 

Sure, no worries.

Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
