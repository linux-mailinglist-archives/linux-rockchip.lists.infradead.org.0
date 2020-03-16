Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C551187363
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 20:33:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvUnyGRNshqQ7uoBn20FsG73Fl7Id+d252jviSRrtYo=; b=EP6v0bdy1Vddx6
	di/LX+oA/FzGceKlb1WluMr3tXxMy1T4BLZnwD/ALFTVSkFG7NuVR/0gXtYzy5+aoZng82boQ2q+X
	UbH23Henih/UsodIy1hbATKqVUdZN4wJfFw/KKpjpgN43RgRI/nwolz1feqFajnSiSsZkFxxvET6f
	RtB49JmN7LENBteyK1RhfhKbLYEvGmFvkkDTu4BiaOhdGwQazYDlclA/KJeWgADVd7gSbjbEpVq7w
	O6pmPU5Uxx7222rRE0HJS0HAtw4N+lU3eyynruI+qm7ptInAzWGkkv9SWERwOydoPdqiF9HKTnWiM
	idLFPSlWOT5gAhGAbwGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDvUQ-0003iI-7l; Mon, 16 Mar 2020 19:33:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDvUL-0003g0-Vp
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 19:33:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 29BE6293517
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/4] media: mc-entity.c: add media_graph_walk_next_stream()
Date: Mon, 16 Mar 2020 16:33:02 -0300
Message-Id: <20200316193305.428378-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316193305.428378-1-helen.koike@collabora.com>
References: <20200316193305.428378-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_123326_167313_A743C19F 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 hans.verkuil@cisco.com, niklas.soderlund@ragnatech.se, mchehab@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add media_graph_walk_next_stream() function to follow links only from
sink to source (not the opposite) to allow iteration only through the
entities participating in a given stream.

This is useful to allow calling .s_stream() callback only in the
subdevices that requires to be enabled/disabled, and avoid calling this
callback when not required.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

 drivers/media/mc/mc-entity.c | 34 +++++++++++++++++++++++++++++++---
 include/media/media-entity.h | 15 +++++++++++++++
 2 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/media/mc/mc-entity.c b/drivers/media/mc/mc-entity.c
index 211279c5fd77..0d44c2de23e6 100644
--- a/drivers/media/mc/mc-entity.c
+++ b/drivers/media/mc/mc-entity.c
@@ -228,6 +228,11 @@ EXPORT_SYMBOL_GPL(media_entity_pads_init);
  * Graph traversal
  */
 
+enum media_graph_walk_type {
+	MEDIA_GRAPH_WALK_CONNECTED_NODES,
+	MEDIA_GRAPH_WALK_STREAM_NODES,
+};
+
 static struct media_entity *
 media_entity_other(struct media_entity *entity, struct media_link *link)
 {
@@ -305,7 +310,8 @@ void media_graph_walk_start(struct media_graph *graph,
 }
 EXPORT_SYMBOL_GPL(media_graph_walk_start);
 
-static void media_graph_walk_iter(struct media_graph *graph)
+static void media_graph_walk_iter(struct media_graph *graph,
+				  enum media_graph_walk_type type)
 {
 	struct media_entity *entity = stack_top(graph);
 	struct media_link *link;
@@ -326,6 +332,15 @@ static void media_graph_walk_iter(struct media_graph *graph)
 	/* Get the entity in the other end of the link . */
 	next = media_entity_other(entity, link);
 
+	if (type == MEDIA_GRAPH_WALK_STREAM_NODES
+	    && next == link->sink->entity) {
+		link_top(graph) = link_top(graph)->next;
+		dev_dbg(entity->graph_obj.mdev->dev,
+			"walk: skipping '%s' (outside of the stream path)\n",
+			link->sink->entity->name);
+		return;
+	}
+
 	/* Has the entity already been visited? */
 	if (media_entity_enum_test_and_set(&graph->ent_enum, next)) {
 		link_top(graph) = link_top(graph)->next;
@@ -342,7 +357,9 @@ static void media_graph_walk_iter(struct media_graph *graph)
 		next->name);
 }
 
-struct media_entity *media_graph_walk_next(struct media_graph *graph)
+static struct media_entity *
+__media_graph_walk_next(struct media_graph *graph,
+			enum media_graph_walk_type type)
 {
 	struct media_entity *entity;
 
@@ -355,7 +372,7 @@ struct media_entity *media_graph_walk_next(struct media_graph *graph)
 	 * found.
 	 */
 	while (link_top(graph) != &stack_top(graph)->links)
-		media_graph_walk_iter(graph);
+		media_graph_walk_iter(graph, type);
 
 	entity = stack_pop(graph);
 	dev_dbg(entity->graph_obj.mdev->dev,
@@ -363,8 +380,19 @@ struct media_entity *media_graph_walk_next(struct media_graph *graph)
 
 	return entity;
 }
+
+struct media_entity *media_graph_walk_next(struct media_graph *graph)
+{
+	return __media_graph_walk_next(graph, MEDIA_GRAPH_WALK_CONNECTED_NODES);
+}
 EXPORT_SYMBOL_GPL(media_graph_walk_next);
 
+struct media_entity *media_graph_walk_next_stream(struct media_graph *graph)
+{
+	return __media_graph_walk_next(graph,  MEDIA_GRAPH_WALK_STREAM_NODES);
+}
+EXPORT_SYMBOL_GPL(media_graph_walk_next_stream);
+
 int media_entity_get_fwnode_pad(struct media_entity *entity,
 				struct fwnode_handle *fwnode,
 				unsigned long direction_flags)
diff --git a/include/media/media-entity.h b/include/media/media-entity.h
index 8cb2c504a05c..f17a5180ce52 100644
--- a/include/media/media-entity.h
+++ b/include/media/media-entity.h
@@ -927,6 +927,21 @@ void media_graph_walk_start(struct media_graph *graph,
  */
 struct media_entity *media_graph_walk_next(struct media_graph *graph);
 
+/**
+ * media_graph_walk_next_stream - Get the next entity in the graph
+ * @graph: Media graph structure
+ *
+ * Perform a depth-first traversal of the given media entities graph only
+ * following links from sink to source (and not the opposite).
+ *
+ * The graph structure must have been previously initialized with a call to
+ * media_graph_walk_start().
+ *
+ * Return: returns the next entity in the graph in the stream path
+ * or %NULL if the whole stream path have been traversed.
+ */
+struct media_entity *media_graph_walk_next_stream(struct media_graph *graph);
+
 /**
  * media_pipeline_start - Mark a pipeline as streaming
  * @entity: Starting entity
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
