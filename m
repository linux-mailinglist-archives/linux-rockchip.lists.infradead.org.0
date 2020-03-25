Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9431933BE
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 23:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsFeSz3fPCvc6PbX7+ApSxmtb5VzKfq86p9UmcdDGOY=; b=irrYjzi/fPBv/K
	QwwLFWqorPvLk3nQAGP/9uTdL/jkNaIACcCwAEVFT40KGmtiQuRq95rjyvJnZ4JJ2KRai+str5RnW
	2M+qMBAMz1WT42CCamFV7q2aA6aQcESATf2DqTe1Hsc00TDCDnu6cJVJRl8Q7mTFP/zYd9T/RB1Xa
	fGgG4hFOG4d4NZ4IfLPRmLEH21VAJd/ylzZOHx6SIi3bVFYz/b3b6ktHsxo1e8YN5rh83WqSu8zyu
	JYWhBz5S7uQYcLxO27ZYbaUy43yl8N7Y8vJ8oRPeRMvTj+ZFyTnXTw5i1xZIJeYFyIJU4QWsxLYq9
	wO5Z1sB/jm+yXAhj8+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHETl-0004lm-BH; Wed, 25 Mar 2020 22:26:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHETh-0004lR-WB
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 22:26:27 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5286780C;
 Wed, 25 Mar 2020 23:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585175184;
 bh=q29DFtLacMDg2oCFUW//v3UN1iGhCP5VE428xshUGRU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tVQb8NMTSaiBcHIq+qvvDRPx7lOeNd6kTsN1te98TZAAGd38/sjBMHMp5TzwqftIf
 /W4ack1uBilWSRY2hMMTREBgMPcCA7z5j+OBWAONG4grVHjGtlgYxNYZq1fcq7U5k+
 5JJM3e7atrw1emS+FHG/evvNCvDi6DsIF85veGC8=
Date: Thu, 26 Mar 2020 00:26:21 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Message-ID: <20200325222621.GX19171@pendragon.ideasonboard.com>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_152626_179299_37A10DD5 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> Add a flag to the flags field of 'struct media_pad_desc'
> that indicates that the data transmitted by the pad is
> metadata.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
>  include/uapi/linux/media.h                        | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> index 3af6a414b501..4ca902478971 100644
> --- a/Documentation/media/uapi/mediactl/media-types.rst
> +++ b/Documentation/media/uapi/mediactl/media-types.rst
> @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
>  .. _MEDIA-PAD-FL-SINK:
>  .. _MEDIA-PAD-FL-SOURCE:
>  .. _MEDIA-PAD-FL-MUST-CONNECT:
> +.. _MEDIA-PAD-FL-METADATA:
>  
>  .. flat-table:: Media pad flags
>      :header-rows:  0
> @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
>  	  configuration dependent) for the pad to need enabled links even
>  	  when this flag isn't set; the absence of the flag doesn't imply
>  	  there is none.
> +    *  -  ``MEDIA_PAD_FL_METADATA``
> +       -  This flag indicates that the data transmitted by the pad is of
> +          type metadata.
>  
>  
>  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> index 383ac7b7d8f0..ae37226eb5c9 100644
> --- a/include/uapi/linux/media.h
> +++ b/include/uapi/linux/media.h
> @@ -210,6 +210,7 @@ struct media_entity_desc {
>  #define MEDIA_PAD_FL_SINK			(1 << 0)
>  #define MEDIA_PAD_FL_SOURCE			(1 << 1)
>  #define MEDIA_PAD_FL_MUST_CONNECT		(1 << 2)
> +#define MEDIA_PAD_FL_METADATA			(1 << 3)

I think we need to reserve a few bits here. We'll have more than
metadata. Audio comes to mind, there will likely be more. Having
independent flags would not only waste a bit of space in the bitfield
(not that we're about to run out of bits, but still), but would make it
possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
| MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
audio metadata could be a thing, so maybe a metadata flag is actually
the best option :-)

There are pros and cons for both options, so I won't recommend one.

>  struct media_pad_desc {
>  	__u32 entity;		/* entity ID */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
